package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Cart;

public interface CartDAO {
	
	public List<Cart> listCart(String id);
	
	public Cart get(String id);
	
	public void saveOrUpdate(Cart cart);
	
	public String delete(int id);
	
	public long getTotal(String id);

}
