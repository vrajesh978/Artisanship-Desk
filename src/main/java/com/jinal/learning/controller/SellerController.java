package com.jinal.learning.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
import com.jinal.learning.model.Product;
import com.jinal.learning.model.ProductInfo;
import com.jinal.learning.service.ClientService;

@Controller
@RequestMapping("/seller")
@Transactional
@SessionAttributes({ ClientForm.FORM_NAME, ProductForm.FORM_NAME })
public class SellerController {
	@Autowired
	private ClientService clientService;
	@Autowired
	private ProductDAO dao;
	@Autowired
	private OrderDAO orderDAO;
	private Client client;

	private ProductInfo productInfo;
	private Product product;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registration() {
		System.out.println("Registration page");
		return new ModelAndView("sellerRegistration", ClientForm.getFormName(), new ClientForm());
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("clientForm") ClientForm clientForm, BindingResult result)
			throws Exception {
		System.out.println("Id : " + clientForm.getId());
		client = clientForm.toModel(Client.class);
		client.setUserRole("SELLER");
		client.setActive(true);
		clientService.Save(client);
		return new ModelAndView("redirect:/seller/addproduct.html");
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		System.out.println("here");
		client = new Client();
		return new ModelAndView("loginSeller", ClientForm.getFormName(), new ClientForm());
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView Validate(HttpServletRequest request, @ModelAttribute("clienForm") ClientForm clientForm,
			BindingResult result) throws Exception {
		String email = clientForm.getEmail();
		String password = clientForm.getPassword();
		try {
			client = clientService.getAllClientByEmailAndPassword(email, password);
			if (client.getUserRole().equals("SELLER")) {
				client.setActive(true);
				ModelAndView andView = new ModelAndView("redirect:/seller/addproduct.html");
				andView.addObject("name", "seller");
				return andView;

			} else {
				client.setActive(false);
				return new ModelAndView("redirect:/seller/login.html");
			}

		} catch (Exception e) {
			return new ModelAndView("redirect:/seller/login.html");
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut() {
		client.setActive(false);
		return "redirect:/";
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public ModelAndView addProduct() {
		ModelAndView andView = new ModelAndView("addproduct");
		andView.addObject(ProductForm.getFormName(), new ProductForm());
		andView.addObject("client", client);
		andView.addObject("name", "seller");
		return andView;

	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	public ModelAndView newProduct(@ModelAttribute("productForm") ProductForm form, BindingResult bindingResult)
			throws Exception {
		System.out.println("Id : " + form.getCode());
		System.out.println("Category : " + form.getCategory());
		productInfo = form.toModel(ProductInfo.class);
		dao.save(productInfo, client);
		ModelAndView andView = new ModelAndView("redirect:/seller/viewProducts.html");
		andView.addObject("client", client);
		return andView;
	}

	@RequestMapping(value = "/viewProducts", method = RequestMethod.GET)
	public ModelAndView viewProducts() {
		List<ProductInfo> products = dao.queryProductsByEmail(client.getEmail());
		ModelAndView andView = new ModelAndView("viewProducts", "products", products);
		andView.addObject("client", client);
		andView.addObject("name", "seller");
		return andView;
	}

	@RequestMapping(value = { "/editProduct" }, method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("id") long id) throws Exception {
		ProductInfo productInfo = dao.findProductInfo(id);
		ModelAndView andView = new ModelAndView("addproduct");
		andView.addObject(ProductForm.getFormName(), productInfo.toForm(ProductForm.class));
		andView.addObject("client", client);
		andView.addObject("name", "seller");
		return andView;
	}

	@RequestMapping(value = { "/deleteProduct" }, method = RequestMethod.GET)
	public String delete(@RequestParam("id") long id) throws Exception {
		long result = dao.delete(id);
		return "redirect:/seller/viewProducts.html";
	}

}
