package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;

@Controller
public class CartController {
	
	Logger log = LoggerFactory.getLogger(CartController.class);
	
	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
//	@Autowired
//	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="/cart", method=RequestMethod.GET)
	public String myCart(Model model,HttpSession session) 
	{
		log.debug("Starting of the method myCart");
		
		model.addAttribute("cart",new Cart());
		//To get logged in user id:
	    String logged_In_User_Id=(String) session.getAttribute("loggedInUserId");
		model.addAttribute("cartList",cartDAO.listCart(logged_In_User_Id));
		model.addAttribute("totalAmount",cartDAO.getTotal(logged_In_User_Id));
		model.addAttribute("cartDisplay","true");
		
		log.debug("Ending of the method myCart");
		 
		return "/Home" ;
	}
	
	@RequestMapping("/deleteCart/{id}")
	public String deleteCart (@PathVariable("id") String id, ModelMap model) throws Exception
	{
		try
		{
			cartDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");		
		}
		catch (Exception e)
		{
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "/Home";
	}
	
	@RequestMapping("/editCart/{id}")
	public String editCart(@PathVariable("id") String id, Model model, HttpSession session)
	{
		model.addAttribute("cart",this.cartDAO.get(id));
		String logged_in_userid = (String) session.getAttribute("loggedInUserId");
		model.addAttribute("listCart",this.cartDAO.listCart(logged_in_userid));
		return "cart";
	}
	
	@RequestMapping(value="/addToMycart/{id}", method = RequestMethod.GET)
	public String addCart(@PathVariable("id") String id, HttpSession session)
	{
		//To get the product based on product id
		Product product= productDAO.get(id);
		Cart cart = new Cart();
		//to get the product price to cart
		cart.setPrice(product.getPrice());
		//to get the product name to cart
		cart.setProduct(product);
		cart.setQuantity(1);
		String logged_in_userid = (String) session.getAttribute("loggedInUserId");
		cart.setUser(userDAO.get(logged_in_userid));
		cart.setStatus("N");
		
		cartDAO.saveOrUpdate(cart);
		return "/Home";		
		
	}
	
	@RequestMapping(value = "product/get/addc/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.listCart(null));
		model.addAttribute("totalAmount", cartDAO.getTotal("user")); // Just to test, passwrdo user
		model.addAttribute("displayCart", "true");
		return "/Home";
	}
	
//	
//	@RequestMapping(value = "get/{id}")
//	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
//		model.addAttribute("selectedProduct", this.productDAO.get(id));
//		model.addAttribute("categoryList", this.categoryDAO.list());
//		//model.addAttribute("isUserClickedproduct", "true");
//        
//		
//		return "/Home";
//
//	}
	
	
	
	
//
//	@RequestMapping(value = "product/get/addc/pay/{id}")
//	public String mypayment(Model model) {
//		
//		return "lastpage";
//    }

	
	

}
