package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class AdminController {

	@Autowired
	private Category category;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Product product;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private Supplier supplier;

	@Autowired
	private SupplierDAO supplierDAO;

	//To manage categories
	@RequestMapping("/categories")
	public ModelAndView category() {

		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("category", category);
		mv.addObject("isAdminCLickedCategory", "true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}
	
	//To manage suppliers
	@RequestMapping("/suppliers")
	public ModelAndView supplier() {

		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("supplier", supplier);
		mv.addObject("isAdminClickedSupplier", "True");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}
	
	//To manage products
	@RequestMapping("/products")
	public ModelAndView product() {

		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("product", product);
		mv.addObject("isAdminClickedProduct", "true");
		mv.addObject("productList", productDAO.list());
		mv.addObject("categoryList", categoryDAO.list());
		mv.addObject("supplierList", supplierDAO.list());

		return mv;
	}

}
