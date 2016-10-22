package com.niit.shoppingcart.dao;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Cart;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(Cart cart)
	{
		Session s=sessionFactory.openSession();
		s.saveOrUpdate(cart);
		s.flush();
	
		
	}
	
	@Transactional
	public String delete(int id) {
		Cart cartToDelete = new Cart();
		cartToDelete.setId(id);
		try
		{
			sessionFactory.getCurrentSession().delete(cartToDelete);
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return e.getMessage();
		}
		return null;
	}
	
	
	@Transactional
	public Cart get(String id)
	{
		String hql = "from Cart where USER_ID=" + "'" + id + "'  and status = " + "'N'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
        List<Cart> listCart = (List<Cart>) query.list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}

		return null;
	}
	
	@Transactional
	public List<Cart> listCart(String id) {
		String hql = "from Cart where USER_ID=" + "'" + id + "'  and status = " + "'N'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		return list;
	}

	@Transactional
	public long getTotal(String id) {
		
		String hql="select sum(price) from Cart where USER_ID=" + "'" + id + "'  and status = " + "'N'";
		Query query= sessionFactory.getCurrentSession().createQuery(hql);
		List list = query.list();
		long total = (Long) list.get(0);
		Long sum= (Long) query.uniqueResult();
		if(list!=null && !list.isEmpty())
		{
			return total;
		}
		return 0;
	}
}
