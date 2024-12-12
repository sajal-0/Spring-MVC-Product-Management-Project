package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Product;

@Repository
public class ProductDao {

	@Autowired
	private SessionFactory factory;
	
	public String addProduct(Product product) {
		
		try {
			Session session = factory.openSession();
			
			Transaction tr = session.beginTransaction();
			
			session.save(product);
			
			tr.commit();
			
			String  msg = "A product added successfully in the database.....";
			return msg;
			
			
		}catch(Exception e) {
			e.printStackTrace();
			String  msg = "something went wrong....";
			return msg;
		}
		
	}

	public List<Product> displayProduct() {
		List<Product> list= null;
		
		try {
			Session session = factory.openSession();
			
			Criteria criteria = session.createCriteria(Product.class);
			list = criteria.list();
			System.out.println("we are in display dao");
			return list;
	
		}catch(Exception e) {
			e.printStackTrace();
			System.err.println("something wend wrong.....");
			return list;
		}	
	}

}
