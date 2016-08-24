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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
//import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.util.FileUtil;
import com.niit.shoppingcart.util.Util;

@Controller
public class ProductController {
	
	Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Product product;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	private String path = "C:\\Users\\LISHITHA K A\\Shopping cart\\";
	
	@RequestMapping(value="product", method=RequestMethod.GET)
	public String productList(Model model)
	{
		log.debug("Starting of the method productList");
		
		model.addAttribute("isAdminClickedProduct", "true");
		model.addAttribute("product",product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());

		log.debug("Ending of the method productList");
		
		return "Home";
	}
	
	//TO ADD PRODUCT
	@RequestMapping(value="/to_add_product",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product)
	{
		log.debug("Starting of the method addProduct");
		
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category); // why to save??

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); // Why to save??

		product.setCategory(category);
		product.setSupplier(supplier);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		
		String newID = Util.removeComma(product.getId());
		product.setId(newID);
		
		productDAO.saveOrUpdate(product);
		
        MultipartFile file = product.getImage();
		FileUtil.upload(path, file, product.getId()+".jpg");
		
		log.debug("Ending of the method addProduct");
		
		return "redirect:/products";
	}

	
	@RequestMapping(value="/editProduct/{id}")
	public String editProduct(@PathVariable("id") String id, ModelMap model)
	{
		log.debug("Starting of the method editProduct");
		
		product=productDAO.get(id);
		model.addAttribute("product",product);
		model.addAttribute("productList",productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList",supplierDAO.list());
		
		log.debug("Ending of the method editProduct");
		
		return "redirect:/product";
	}
	
	//TO DELETE PRODUCT
	@RequestMapping("/deleteProduct/{id}")
	public String deleteProduct (@PathVariable("id") String id, ModelMap model) throws Exception
	{
		log.debug("Starting of the method deleteProduct");
		
		try
		{
			productDAO.delete(id);
			model.addAttribute("msg1","Successfully Added");
		}
		catch(Exception e)
		{
			model.addAttribute("msg1",e.getMessage());
			e.printStackTrace();
		}
		log.debug("Ending of the method deleteProduct");
		
			return "redirect:/product";
	}
	
	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		
		return "redirect:/backToHome";

	}

	@RequestMapping(value = "/backToHome", method = RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") 
	        final Object selectedProduct, final Model model) {

		model.addAttribute("selectedProduct", selectedProduct);
		//model.addAttribute("categoryList", this.categoryDAO.list());
		

		return "/Home";
	}
	
//	@RequestMapping(value = "product/get/{id}")
//	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
//		model.addAttribute("selectedProduct", this.productDAO.get(id));
//		model.addAttribute("categoryList", this.categoryDAO.list());
//		//model.addAttribute("isUserClickedproduct", "true");
//        
//	return "home";
//
//	}
//	
//	
//	@RequestMapping(value= "product/get/addc/{id}", method = RequestMethod.GET)
//	public String addToCart(@PathVariable("id") String id){
//		
//	System.out.println("*****************************************working***************************************************************************************");
//	 Product product =	 productDAO.get(id);
//	 Cart cart = new Cart();
//	 cart.setPrice(product.getPrice());
//	 cart.setProductName(product.getName());
//	 cart.setQuantity(1);
//	 cart.setId(1);  //  id should keep session and use the same id
//	 cart.setStatus("Y");
//	 cart.setTotal(product.getPrice());// 
//		cartDAO.saveOrUpdate(cart);
////		//return "redirect:/views/home.jsp";
//		return "/home";
//		
//	}
//
//	@RequestMapping(value = "product/get/addc/myCart", method = RequestMethod.GET)
//	public String myCart(Model model) {
//		model.addAttribute("category", new Category());
//		model.addAttribute("categoryList", categoryDAO.list());
//	
//		model.addAttribute("cart", new Cart());
//		model.addAttribute("cartList", this.cartDAO.listCart());
//		model.addAttribute("totalAmount", cartDAO.getTotal("user")); // Just to test, passwrdo user
//		model.addAttribute("displayCart", "true");
//		return "/home";
//	}
//	
//
//	@RequestMapping(value = "product/get/addc/pay/{id}")
//	public String mypayment(Model model) {
//		
//		return "lastpage";
//	}


	

}
