package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tka.entity.Product;
import com.tka.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	@GetMapping("/add-product")
	public String insertProductpage() {
		return "add";
	}
	
	@PostMapping("/insert-product")
	public String addProduct(@ModelAttribute Product product) {
		String msg = service.addProduct(product);
		System.err.println(msg);
		
		return "add";
	}
	
	@GetMapping("/display-product")
	public String displayProduct(Model model) {
		List<Product> list = service.displayProduct();
		System.err.println(list);
		System.out.println("we are in display controller");
		model.addAttribute("products", list);
		return "display";
	}
	
	
	
	
}
