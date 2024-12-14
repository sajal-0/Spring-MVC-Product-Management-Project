package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.entity.Product;
import com.tka.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	 @GetMapping("/")
	    public String home() {
	        return "index"; 
	    }
	
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
		model.addAttribute("products", list);
		return "display";
	}

    @GetMapping("/view-product")
    public String getProductForUpdate(@RequestParam("pid") int pid, Model model) {
        Product product = service.getProductById(pid);
        model.addAttribute("product", product);
        return "update"; 
    }
    
    @PostMapping("/update-product")
    public String updateProduct(@ModelAttribute Product product) {
        String msg = service.updateProduct(product);
        System.err.println(msg);
        return "redirect:/display-product"; // Redirect back to display after updating
    }
    
    @GetMapping("/delete-product")
    public String deleteProduct(@RequestParam("pid") int pid) {
    	String msg = service.deleteProduct(pid);
    	System.out.println(msg);
    	return "redirect:/display-product";
    }

	
	
	
	
}
