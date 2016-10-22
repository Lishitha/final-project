package com.niit.shoppingcart.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	/*-------------------admin---------------*/
	 @RequestMapping(value = "/admin**", method = RequestMethod.GET)
		public ModelAndView adminPage() {

			ModelAndView model = new ModelAndView();
			model.addObject("title", "Spring Security Hello World");
			model.addObject("message", "This is protected page!");
			model.setViewName("admin");

			return model;

		}
		@RequestMapping(value = "/securityLogin", method = RequestMethod.GET)
		public ModelAndView login(@RequestParam(value = "error", required = false) String error,
				@RequestParam(value = "logout", required = false) String logout) {
			log.debug("Start: method securityLogin");

			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error", "Invalid username and password!");
			}

			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			model.setViewName("securityLogin");
			log.debug("End: method securityLogin");

			return model;

		}
		@RequestMapping(value = "/403", method = RequestMethod.GET)
		public ModelAndView accesssDenied(Principal user) {

			ModelAndView model = new ModelAndView();

			if (user != null) {
				model.addObject("msg", "Hi " + user.getName()
				+ ", you do not have permission to access this page!");
			} else {
				model.addObject("msg",
				"You do not have permission to access this page!");
			}

			model.setViewName("403");
			return model;

		}
		
		@RequestMapping(value = {"/welcome**" }, method = RequestMethod.GET)
		public ModelAndView defaultPage() {
			log.debug("Start: method defaultPage");
			ModelAndView model = new ModelAndView();
			model.addObject("title", "Spring Security Login Form - Database Authentication");
			model.addObject("message", "This is default page!");
			model.setViewName("hello");
			log.debug("End: method defaultPage");
			return model;
			
		}

	

}


//package com.niit.shoppingcart.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.niit.shoppingcart.dao.CategoryDAO;
//import com.niit.shoppingcart.dao.UserDAO;
//import com.niit.shoppingcart.model.Category;
//import com.niit.shoppingcart.model.User;
//
//@Controller
//public class HomeController {
//
//	Logger log = LoggerFactory.getLogger(HomeController.class);
//
//	@Autowired
//	private Category category;
//
//	@Autowired
//	private CategoryDAO categoryDAO;
//
//	@Autowired
//	User user;
//
//	@Autowired
//	UserDAO userDAO;
//
//	@RequestMapping("/")
//	public ModelAndView myFun1(HttpSession session) {
//
//		log.debug("Starting of the method myFun1");
//
//		ModelAndView mv = new ModelAndView("/Home");
//
//		session.setAttribute("category", category);
//		session.setAttribute("categoryList", categoryDAO.list());
//
//		log.debug("Ending of the method myFun1");
//
//		return mv;
//
//	}
//
//	@RequestMapping("/login")
//	public ModelAndView Login() {
//
//		log.debug("Starting of the method Login");
//
//		ModelAndView mv = new ModelAndView("/Home");
//		mv.addObject("user", user);
//		mv.addObject("isUserClickedLogin", "true");
//
//		log.debug("End of the method Login");
//
//		return mv;
//
//	}
//
//	@RequestMapping("/register")
//	public ModelAndView Register() {
//
//		log.debug("Starting of the method Register");
//
//		ModelAndView mv = new ModelAndView("/Home");
//		mv.addObject("user", user);
//		mv.addObject("isUserClickedRegister", "true");
//
//		log.debug("End of the method REgister");
//
//		return mv;
//	}
//
////	/*-------------------admin---------------*/
////	 @RequestMapping(value = "/admin**", method = RequestMethod.GET)
////		public ModelAndView adminPage() {
////
////			ModelAndView model = new ModelAndView();
////			model.addObject("title", "Spring Security Hello World");
////			model.addObject("message", "This is protected page!");
////			model.setViewName("admin");
////
////			return model;
////
////		}
////	 
////	 @RequestMapping(value = { "/welcome**" }, method = RequestMethod.GET)
////		public ModelAndView defaultPage() {
////
////			ModelAndView model = new ModelAndView();
////			model.addObject("title", "Spring Security Login Form - Database Authentication");
////			model.addObject("message", "This is default page!");
////			model.setViewName("hello");
////			return model;
////
////		}
////	
////	/*-----------login---------------------*/
////	@RequestMapping(value = "/securityLogin", method = RequestMethod.GET)
////	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
////			@RequestParam(value = "logout", required = false) String logout) {
////
////		ModelAndView model = new ModelAndView();
////		if (error != null) {
////			model.addObject("error", "Invalid username and password!");
////		}
////
////		if (logout != null) {
////			model.addObject("msg", "You've been logged out successfully.");
////		}
////	model.setViewName("login");
////
////		return model;
////}
//
//}
