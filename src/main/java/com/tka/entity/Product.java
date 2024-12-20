package com.tka.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import lombok.Data;

@Entity
@Table(name="product" , schema = "servletdb")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	
	@Column(name = "pname")
	private String name;
	
	@Column(name = "price")
	private int price;
	
	@Column(name = "qty")
	private int quantity;
	
	@Column(name = "category")
	private String Category;
	
	public Product() {
		super();
	}

	public Product(String name, int price, int quantity, String category) {
		super();
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		Category = category;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	@Override
	public String toString() {
		return "Product [name=" + name + ", price=" + price + ", Category=" + Category + "]";
	}
	
	
	
	
	
	
	

	
}
