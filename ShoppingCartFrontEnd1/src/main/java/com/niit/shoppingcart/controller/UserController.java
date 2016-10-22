package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;

@Controller
public class UserController {

	Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserDAO userDAO;

	@Autowired
	User user;

	@Autowired
	private Category category;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView registerUser(HttpSession session)
	{
		log.debug("Starting of the method registerUser");
		User user = (User) session.getAttribute("user");
		ModelAndView mv = new ModelAndView("redirect:/");
		userDAO.saveOrUpdate(user);
		mv.addObject("successMessage", "You are successfully register");
		
		log.debug("Ending of the method registerUser");

		return mv;
	}

	@RequestMapping(value = "/login_to_enter", method = RequestMethod.POST)
	public ModelAndView loginToEnter(@RequestParam(value = "userName") String userID,
			@RequestParam(value = "pwd") String password, HttpSession session) 
	{
		
		log.debug("Starting of the method login");
		log.info("userID is {}  password is {}", userID, password);

		ModelAndView mv = new ModelAndView("/Home");
		boolean isValidUser = userDAO.isValidUser(userID, password);
		System.out.println(isValidUser);

		if (isValidUser == true)
		{
			user = userDAO.get(userID);
			session.setAttribute("loggedInUser", user.getName());
			session.setAttribute("loggedInUserId", user.getId());
			System.out.println(user.getId() + "logged in");

			if (userID.equals("LISHI") && password.equals("LISHI"))
			{
				mv.addObject("isAdmin", "true");

			} 
			else
			{
				mv.addObject("isAdmin", "false");
				cart=cartDAO.get(userID);
				mv.addObject("cart",cart);
				List<Cart> cartList = cartDAO.listCart(userID);
				mv.addObject("cartList",cartList);
				mv.addObject("cartSize",cartList.size());

			}
		}

		else
		{
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMsg", "** Please check your username or password **");
		}
		log.debug("Ending of the method login");
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session)
	{
		log.debug("Starting of the method logout");
		
		ModelAndView mv = new ModelAndView("/Home");

		// Once a session has been invalidated, the SessionID placed in a cookie
		// on the client will be invalid too, and a new one will have to be
		// created when a new session object is created. So the new Session will
		// have a new ID.
		session.invalidate();

		// request.getSession(true) will return current session. If current
		// session will not exist then it will create new session.
		session = request.getSession(true);
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		mv.addObject("logoutMsg", "...YOU ARE SUCCESSFULLY LOGGED OUT...");
		mv.addObject("loggedOut", "true");
		
		log.debug("Ending of the method logout");
		
		return mv;
	}
	
	
	

}
