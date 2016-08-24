package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;

public class CartTest {

	public static void main(String[] args) {

		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext con = new AnnotationConfigApplicationContext();

		con.scan("com.niit.shoppingcart");
		con.refresh();
		Cart cart = (Cart) con.getBean("cart");

		CartDAO cartDAO = (CartDAO) con.getBean("cartDAO");
		ProductDAO productDAO = (ProductDAO) con.getBean("productDAO");
		UserDAO userDAO = (UserDAO) con.getBean("userDAO");
		
		cart.setId("CArt03");
		cart.setPrice(250);
		cart.setQuantity(3);
		cart.setTotal(750);
		cart.setUser(userDAO.get("ASMA"));
		cart.setProduct(productDAO.get("PR002"));
		cart.setStatus("AVAILABLE");

		cartDAO.saveOrUpdate(cart);

		System.out.println("updated");
	}

}
