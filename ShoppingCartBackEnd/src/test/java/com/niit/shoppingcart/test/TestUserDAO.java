package com.niit.shoppingcart.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;


public class TestUserDAO {

	//The reuired beans are
	//UserDetails and UserDetailsDAO from the context
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	//get the bean
	AnnotationConfigApplicationContext context;
	
	
	//before executing any other test case execute this
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		userDAO=(UserDAO) context.getBean("userDAO");
		user=(User) context.getBean("userDetails");
	}
	
	//select count(*) from userDetails
	@Test
	public void UserTest()
	{
		int size=userDAO.list().size();
		
		assertEquals("test case",2, size);
		
		
	}
	
	
	
	
	
	
	
}
