package com.jinal.learning.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
import com.jinal.learning.form.ProductForm;
import com.jinal.learning.model.Client;
import com.jinal.learning.model.OrderDetailInfo;
import com.jinal.learning.model.OrderInfo;
import com.jinal.learning.model.Product;
import com.jinal.learning.model.ProductInfo;
import com.jinal.learning.service.ClientService;

@Controller
@Transactional
@RequestMapping("/admin")
@SessionAttributes({ ClientForm.FORM_NAME, ProductForm.FORM_NAME })
public class AdminController {
	@Autowired
	private ClientService clientService;
	@Autowired
	private ProductDAO dao;
	@Autowired
	private OrderDAO orderDAO;
	private Client client;

	private ProductInfo productInfo;
	private Product product;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		System.out.println("here");
		client = new Client();
		return new ModelAndView("loginAdmin", ClientForm.getFormName(), new ClientForm());
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView Validate(HttpServletRequest request, @ModelAttribute("clienForm") ClientForm clientForm,
			BindingResult result) throws Exception {
		String email = clientForm.getEmail();
		String password = clientForm.getPassword();
		try {
			client = clientService.getAllClientByEmailAndPassword(email, password);
			System.out.println("CLIENT USER ROLE =" + client.getUserRole());
			System.out.println("CLIENT USER NAME =" + client.getUserName());
			if (client.getUserRole().equals("ADMIN")) {
				client.setActive(true);
				ModelAndView andView = new ModelAndView("redirect:/admin/addproduct.html");
				andView.addObject("name", "admin");
				return andView;

			} else {
				client.setActive(false);
				return new ModelAndView("redirect:/admin/login.html");
			}

		} catch (Exception e) {
			return new ModelAndView("redirect:/admin/login.html");
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut() {

		return "redirect:/";
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public ModelAndView addProduct() {
		ModelAndView andView = new ModelAndView("addproduct");
		andView.addObject(ProductForm.getFormName(), new ProductForm());
		andView.addObject("client", client);
		andView.addObject("name", "admin");
		return andView;

	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public String newProduct(@ModelAttribute("productForm") ProductForm form, BindingResult bindingResult)
			throws Exception {
		System.out.println("Id : " + form.getCode());
		System.out.println("Category : " + form.getCategory());
		productInfo = form.toModel(ProductInfo.class);
		System.out.println("Set cedsfdsfd = " + productInfo.getCategory());
		dao.save(productInfo, client);
		return "redirect:/admin/viewProducts.html";
	}

	@RequestMapping(value = "/viewProducts", method = RequestMethod.GET)
	public ModelAndView viewProducts() {
		List<ProductInfo> products = dao.queryPorducts();
		ModelAndView andView = new ModelAndView("viewProducts", "products", products);
		andView.addObject("client", client);
		andView.addObject("name", "admin");
		return andView;
	}

	@RequestMapping(value = { "/order" }, method = RequestMethod.GET)
	public String orderView(Model model, @RequestParam("orderId") String orderId) {
		OrderInfo orderInfo = null;
		if (orderId != null) {
			orderInfo = this.orderDAO.getOrderInfo(orderId);
		}
		if (orderInfo == null) {
			return "redirect:/admin/orderList.html";
		}
		List<OrderDetailInfo> details = this.orderDAO.listOrderDetailInfos(orderId);
		orderInfo.setDetails(details);

		model.addAttribute("orderInfo", orderInfo);
		model.addAttribute("client", client);
		model.addAttribute("name", "admin");
		return "order";
	}

	@RequestMapping(value = { "/orderList" }, method = RequestMethod.GET)
	public String orderList(Model model, //
			@RequestParam(value = "page", defaultValue = "1") String pageStr) {
		model.addAttribute("client", client);
		model.addAttribute("name", "admin");
		return "orderList";
	}

	@RequestMapping(value = { "/editProduct" }, method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("id") long id) throws Exception {
		ProductInfo productInfo = dao.findProductInfo(id);
		ModelAndView andView = new ModelAndView("addproduct");
		andView.addObject(ProductForm.getFormName(), productInfo.toForm(ProductForm.class));
		andView.addObject("client", client);
		andView.addObject("name", "admin");
		return andView;
	}

	@RequestMapping(value = { "/deleteProduct" }, method = RequestMethod.GET)
	public String delete(@RequestParam("id") long id) throws Exception {
		long result = dao.delete(id);
		return "redirect:/admin/viewProducts.html";
	}

	@RequestMapping(value = { "/userslist" }, method = RequestMethod.GET)
	public ModelAndView manageUser() throws SQLException {
		List<Client> clist = clientService.getAllClients();
		ModelAndView andView = new ModelAndView("viewUsers", "clist", clist);
		andView.addObject("client", client);
		andView.addObject("name", "admin");
		return andView;
	}

	@RequestMapping(value = { "/editClient" }, method = RequestMethod.GET)
	public ModelAndView editClient(@RequestParam("id") long id) throws Exception {
		Client client = clientService.findClientById(id);
		ModelAndView andView = new ModelAndView("registration");
		andView.addObject(ClientForm.getFormName(), client.toForm(ClientForm.class));
		andView.addObject("name", "admin");
		return andView;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("clientForm") ClientForm clientForm, BindingResult result) throws Exception {
		System.out.println("Id : " + clientForm.getId());
		client = clientForm.toModel(Client.class);
		client.setUserRole("CUSTOMER");
		client.setActive(true);
		clientService.Save(client);
		return "redirect:/admin/userslist.html";
	}

	@RequestMapping(value = { "/deleteClient" }, method = RequestMethod.GET)
	public String deleteClient(@RequestParam("id") long id) throws Exception {
		long result = clientService.delete(id);
		return "redirect:/admin/userslist.html";
	}

	@RequestMapping(value = { "/productImage" }, method = RequestMethod.GET)
	public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam("code") String code) throws IOException, SQLException {
		Product product = null;

		if (code != null) {
			product = this.dao.findProduct(code);
		}
		if (product != null && product.getImage() != null) {
			response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
			response.getOutputStream().write(product.getImage());
		}
		response.getOutputStream().close();
	}
}