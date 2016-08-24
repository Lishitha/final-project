package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;

@Controller
public class ProductDisplayController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("/cake")
	public ModelAndView cake()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserClickedCake","true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/cookie")
	public ModelAndView cookie()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserClickedCookie","true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/chocolate")
	public ModelAndView chocolate()
	{
		ModelAndView mv = new ModelAndView("/Home");
		mv.addObject("isUserClickedChocolate","true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}

}
