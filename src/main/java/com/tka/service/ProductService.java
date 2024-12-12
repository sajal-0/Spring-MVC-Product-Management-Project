package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.ProductDao;
import com.tka.entity.Product;

@Service
public class ProductService {

	@Autowired
	private ProductDao dao;
	
	public String addProduct(Product product) {
		String msg = dao.addProduct(product);
		return msg;
	}

	public List<Product> displayProduct() {
		List<Product> list = dao.displayProduct();
		System.out.println("we are in display service");
		return list;
	}


}
