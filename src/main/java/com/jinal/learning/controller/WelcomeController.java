package com.jinal.learning.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.jinal.learning.dao.OrderDAO;
import com.jinal.learning.dao.ProductDAO;
import com.jinal.learning.form.ClientForm;
import com.jinal.learning.model.CartInfo;
import com.jinal.learning.model.Client;
import com.jinal.learning.model.CustomerInfo;
import com.jinal.learning.model.Product;
import com.jinal.learning.model.ProductInfo;
import com.jinal.learning.service.ClientService;
import com.jinal.learning.util.Utils;

@Controller
// Enable Hibernate Transaction.
@Transactional

@SessionAttributes({ ClientForm.FORM_NAME })
public class WelcomeController {
	@Autowired
	private OrderDAO orderDAO;

	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private ClientService clientService;

	private boolean login = false;
	private Client client;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView indexPage() {
		System.out.println("Index page");
		if (login == false)
			client = new Client();
		List<ProductInfo> products = productDAO.queryPorducts();
		ModelAndView andView = new ModelAndView("index", "client", client);
		andView.addObject("products", products);
		return andView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView Login() {
		System.out.println("Login page");
		return new ModelAndView("login", ClientForm.getFormName(), new ClientForm());
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView Validate(@ModelAttribute("clienForm") ClientForm clientForm, BindingResult result)
			throws Exception {
		String email = clientForm.getEmail();
		String password = clientForm.getPassword();
		try {
			client = clientService.getAllClientByEmailAndPassword(email, password);
			client.setActive(true);
			login = true;
		} catch (Exception e) {
			return new ModelAndView("redirect:/login.html");
		}
		login = true;
		return new ModelAndView("redirect:/viewProducts.html");

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut() {
		client.setActive(false);
		login = false;
		return "redirect:/";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registration() {
		System.out.println("Registration page");
		return new ModelAndView("registration", ClientForm.getFormName(), new ClientForm());
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("clientForm") ClientForm clientForm, BindingResult result)
			throws Exception {
		System.out.println("Id : " + clientForm.getId());
		client = clientForm.toModel(Client.class);
		client.setUserRole("ADMIN");
		client.setActive(true);
		login = true;
		clientService.Save(client);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("clientForm") ClientForm clientForm, BindingResult result)
			throws Exception {

		client = clientService.getAllClientByEmail(clientForm.getEmail());
		client.setPassword(clientForm.getPassword());
		clientService.Save(client);
		return new ModelAndView("redirect:/login");
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView products() {
		return new ModelAndView("products", "client", client);
	}

	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public ModelAndView checkout(HttpServletRequest request) {
		ModelAndView andView = new ModelAndView("checkout", "client", client);
		CartInfo myCart = Utils.getCartInSession(request);
		andView.addObject("cartForm", myCart);
		return andView;
	}

	// @RequestMapping(value = "/codes", method = RequestMethod.GET)
	// public ModelAndView codes() {
	// return new ModelAndView("codes", "client", client);
	// }
	@RequestMapping(value = "/single", method = RequestMethod.GET)
	public ModelAndView single() {
		return new ModelAndView("single", "client", client);
	}

	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public ModelAndView mailUs() {
		return new ModelAndView("mail", "client", client);
	}

	@RequestMapping(value = "/forget", method = RequestMethod.GET)
	public ModelAndView forget() {
		return new ModelAndView("forgetPassword");
	}

	@RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
	public ModelAndView resetPassword(@ModelAttribute("clienForm") ClientForm clientForm) {
		String email = clientForm.getEmail();
		return new ModelAndView("resetPasswrod", "email", email);
	}

	@RequestMapping(value = "/viewProducts", method = RequestMethod.GET)
	public ModelAndView viewProducts() {
		List<ProductInfo> products = productDAO.queryPorducts();
		ModelAndView andView = new ModelAndView("viewProductsCustomer", "products", products);
		andView.addObject("client", client);
		return andView;
	}

	@RequestMapping({ "/buyProduct" })
	public String listProductHandler(HttpServletRequest request, Model model, //
			@RequestParam(value = "code", defaultValue = "") String code) {

		Product product = null;
		if (code != null && code.length() > 0) {
			product = productDAO.findProduct(code);
		}
		if (product != null) {

			// Cart info stored in Session.
			CartInfo cartInfo = Utils.getCartInSession(request);

			ProductInfo productInfo = new ProductInfo(product);

			cartInfo.addProduct(productInfo, 1);
		}
		// Redirect to shoppingCart page.
		return "redirect:/shoppingCart.html";
	}

	// POST: Update quantity of products in cart.
	@RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.POST)
	public String shoppingCartUpdateQty(HttpServletRequest request, //
			Model model, //
			@ModelAttribute("cartForm") CartInfo cartForm) {

		CartInfo cartInfo = Utils.getCartInSession(request);
		cartInfo.updateQuantity(cartForm);
		model.addAttribute("client", client);
		// Redirect to shoppingCart page.
		return "redirect:/shoppingCart.html";
	}

	// GET: Show Cart
	@RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.GET)
	public ModelAndView shoppingCartHandler(HttpServletRequest request) {
		CartInfo myCart = Utils.getCartInSession(request);
		ModelAndView andView = new ModelAndView("shoppingCart");
		andView.addObject("cartForm", myCart);
		andView.addObject("client", client);
		return andView;
	}

	@RequestMapping(value = { "/shoppingCartFinalize" }, method = RequestMethod.GET)
	public String shoppingCartFinalize(HttpServletRequest request, Model model) {

		CartInfo lastOrderedCart = Utils.getLastOrderedCartInSession(request);
		model.addAttribute("client", client);
		if (lastOrderedCart == null) {
			return "redirect:/shoppingCart.html";
		}

		return "shoppingCartFinalize";
	}

	// GET: Enter customer information.
	@RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.GET)
	public String shoppingCartCustomerForm(HttpServletRequest request, Model model) {

		CartInfo cartInfo = Utils.getCartInSession(request);

		// Cart is empty.
		if (cartInfo.isEmpty()) {

			// Redirect to shoppingCart page.
			return "redirect:/shoppingCart.html";
		}

		CustomerInfo customerInfo = cartInfo.getCustomerInfo();
		if (customerInfo == null) {
			customerInfo = new CustomerInfo();
		}

		model.addAttribute("customerForm", customerInfo);
		model.addAttribute("client", client);
		return "shoppingCartCustomer";
	}

	// POST: Save customer information.
	@RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.POST)
	public String shoppingCartCustomerSave(HttpServletRequest request, //
			Model model, //
			@ModelAttribute("customerForm") CustomerInfo customerForm, //
			BindingResult result) {

		// If has Errors.
		if (result.hasErrors()) {
			customerForm.setValid(false);
			// Forward to reenter customer info.
			return "shoppingCartCustomer";
		}

		customerForm.setValid(true);
		CartInfo cartInfo = Utils.getCartInSession(request);

		cartInfo.setCustomerInfo(customerForm);
		model.addAttribute("client", client);
		// Redirect to Confirmation page.
		return "redirect:/shoppingCartConfirmation.html";
	}

	// POST: Send Cart (Save).
	@RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.POST)
	// Avoid UnexpectedRollbackException (See more explanations)
	@Transactional(propagation = Propagation.NEVER)
	public String shoppingCartConfirmationSave(HttpServletRequest request, Model model) {
		CartInfo cartInfo = Utils.getCartInSession(request);
		model.addAttribute("client", client);
		// Cart have no products.
		if (cartInfo.isEmpty()) {
			// Redirect to shoppingCart page.
			return "redirect:/shoppingCart.html";
		} else if (!cartInfo.isValidCustomer()) {
			// Enter customer info.
			return "redirect:/shoppingCartCustomer.html";
		}
		try {
			orderDAO.saveOrder(cartInfo);
		} catch (Exception e) {
			// Need: Propagation.NEVER?
			return "shoppingCartConfirmation";
		}
		// Remove Cart In Session.
		Utils.removeCartInSession(request);

		// Store Last ordered cart to Session.
		Utils.storeLastOrderedCartInSession(request, cartInfo);

		// Redirect to successful page.
		return "redirect:/shoppingCartFinalize.html";
	}

	@RequestMapping({ "/shoppingCartRemoveProduct" })
	public String removeProductHandler(HttpServletRequest request, Model model, //
			@RequestParam(value = "code", defaultValue = "") String code) {
		Product product = null;
		model.addAttribute("client", client);
		if (code != null && code.length() > 0) {
			product = productDAO.findProduct(code);
		}
		if (product != null) {

			// Cart Info stored in Session.
			CartInfo cartInfo = Utils.getCartInSession(request);

			ProductInfo productInfo = new ProductInfo(product);

			cartInfo.removeProduct(productInfo);

		}
		// Redirect to shoppingCart page.
		return "redirect:/shoppingCart.html";
	}

	// GET: Review Cart to confirm.
	@RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.GET)
	public String shoppingCartConfirmationReview(HttpServletRequest request, Model model) {
		CartInfo cartInfo = Utils.getCartInSession(request);
		model.addAttribute("client", client);
		// Cart have no products.
		if (cartInfo.isEmpty()) {
			// Redirect to shoppingCart page.
			return "redirect:/shoppingCart.html";
		} else if (!cartInfo.isValidCustomer()) {
			// Enter customer info.
			return "redirect:/shoppingCartCustomer.html";
		}

		return "shoppingCartConfirmation";
	}

	@RequestMapping(value = { "/productImage" }, method = RequestMethod.GET)
	public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam("code") String code) throws IOException, SQLException {
		Product product = null;
		if (code != null) {
			product = this.productDAO.findProduct(code);
		}
		if (product != null && product.getImage() != null) {
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			response.getOutputStream().write(product.getImage());
		}
		response.getOutputStream().close();
	}
}
