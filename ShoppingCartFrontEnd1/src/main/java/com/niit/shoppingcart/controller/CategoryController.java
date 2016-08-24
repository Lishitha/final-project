package com.niit.shoppingcart.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.util.Util;

@Controller
public class CategoryController {
	
	Logger log = LoggerFactory.getLogger(CategoryController.class);
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	@RequestMapping(value="/category", method=RequestMethod.GET)
	public String categoryList(Model model)
	{
		log.debug("Starting of the method categoryList");
		
		model.addAttribute("isAdminCLickedCategory", "true");
		model.addAttribute("category",category);
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		log.debug("Ending of the method categoryList");
		
		return "Home";
	}
	
	//TO ADD CATEGORY
	@RequestMapping(value="/to_add_category",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category)
	{
		log.debug("Starting of the method addCategory");
		
		String newID = Util.removeComma(category.getId());
		category.setId(newID);
		categoryDAO.saveOrUpdate(category);
		//ModelAndView mv=new ModelAndView("redirect:/category");
		//model.addAtt("categorySuccessMsg", "Category successfully added");
		
		log.debug("Ending of the method addCategory");
		
		return "redirect:/category";
	}
	
	//TO EDIT CATEGORY
	@RequestMapping(value="/editCategory/{id}")
	public String editCategory(@PathVariable("id") String id, ModelMap model)
	{
		log.debug("Starting of the method editCategory");
		
		category=categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("categoryList",categoryDAO.list());
		
		log.debug("Ending of the method editCategory");
		
		return "redirect:/category";
	}
	
    //TO DELETE CATEGORY
	@RequestMapping("/deleteCategory/{id}")
	public String deleteCategory (@PathVariable("id") String id, ModelMap model) throws Exception
	{
		log.debug("Starting of the method deleteCategory");
		
		try
		{
			categoryDAO.delete(id);
			model.addAttribute("msg","Successfully Added");
		}
		catch(Exception e)
		{
			model.addAttribute("msg",e.getMessage());
			e.printStackTrace();
		}
		
		log.debug("Ending of the method deleteCategory");
		
		return "redirect:/category";
	}

}
