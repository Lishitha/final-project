package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Product;

public class ProductTest {

	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();
		
		con.scan("com.niit.shoppingcart");
		con.refresh();
		Product product= (Product) con.getBean("product");
		
		ProductDAO productDAO = (ProductDAO) con.getBean("productDAO");
		CategoryDAO categoryDAO = (CategoryDAO) con.getBean("categoryDAO");
		SupplierDAO supplierDAO = (SupplierDAO) con.getBean("supplierDAO");
		
		
		product.setId("PRO001");
		product.setName("MOBILE");
		product.setDescription("ABCDASDFGGH");
		product.setPrice(100);
		product.setCategory(categoryDAO.get("CAT0089"));
		product.setSupplier(supplierDAO.get("SUP004"));
		
		productDAO.saveOrUpdate(product);
		System.out.println("updated");
		/*
		if(productDAO.get("sdfghg")==null)
		{
			System.out.println("not exist");
		}
		else
		{
			System.out.println("exist");
			System.out.println();
			
		}*/



	}

}
