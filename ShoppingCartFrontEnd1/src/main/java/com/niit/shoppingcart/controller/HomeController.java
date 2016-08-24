package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {
	
	Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private Category category;

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	User user;

	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/")
	public ModelAndView myFun1(HttpSession session) {
		
		log.debug("Starting of the method myFun1");
		
		 ModelAndView mv = new ModelAndView("/Home");
		 session.setAttribute("category", category);
		 session.setAttribute("categoryList", categoryDAO.list());
		 
		 log.debug("Ending of the method myFun1");
		 
		 return mv;

	}
	
	@RequestMapping("/login")
	public ModelAndView Login() {
		
		log.debug("Starting of the method Login");
		
		ModelAndView mv = new ModelAndView("/Home");
        mv.addObject("user", user);
		mv.addObject("isUserClickedLogin", "true");
		
		log.debug("End of the method Login");
		
		return mv;

	}

	@RequestMapping("/register")
	public ModelAndView Register() {
		
		log.debug("Starting of the method Register");
		
		ModelAndView mv = new ModelAndView("/Home");
        mv.addObject("user", user);
		mv.addObject("isUserClickedRegister", "true");
		
		log.debug("End of the method REgister");

		return mv;
	}


	

}
