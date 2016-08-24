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
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.Util;

@Controller
public class SupplierController {
	
	Logger log = LoggerFactory.getLogger(SupplierController.class);
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private Supplier supplier;

	@RequestMapping(value="/supplier", method=RequestMethod.GET)
	public String supplierList(Model model)
	{
		log.debug("Starting of the method supplierList");
		
		model.addAttribute("isAdminClickedSupplier", "true");
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList", this.supplierDAO.list());
		
		log.debug("Ending of the method supplierList");
		
		return "Home";
	}
	
	
	//TO ADD SUPPLIER
		@RequestMapping(value="/to_add_supplier",method=RequestMethod.POST)
		public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
		{
			log.debug("Starting of the method addSupplier");
			
			String newID = Util.removeComma(supplier.getId());
			supplier.setId(newID);
			supplierDAO.saveOrUpdate(supplier);
			//ModelAndView mv=new ModelAndView("/Home");
			//mv.addObject("supplierSuccessMsg", "Supplier successfully added");
			
			log.debug("Ending of the method addSupplier");
			
			return "redirect:/supplier";
		}
		
		//TO EDIT SUPPLIER
		@RequestMapping(value="/editSupplier/{id}")
		public String editSupplier(@PathVariable("id") String id, ModelMap model)
		{
			log.debug("Starting of the method editSupplier");
			
			supplier=supplierDAO.get(id);
			model.addAttribute("supplier",supplier);
			model.addAttribute("supplierList",supplierDAO.list());
			
			log.debug("Ending of the method editSupplier");
			
			return "redirect:/supplier";
		}
		
		
		
		//TO DELETE SUPPLIER
		@RequestMapping("deleteSupplier/{id}")
		public String deleteSupplier (@PathVariable("id") String id, ModelMap model)
		{
			log.debug("Starting of the method deleteSupplier");
			
			supplierDAO.delete(id);
			
			log.debug("Ending of the method deleteSupplier");
			
			return "redirect:/supplier";
			
		}
		
		
	
}
