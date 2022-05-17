package com.rozemart.admin.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.rozemart.admin.brand.BrandService;
import com.rozemart.common.entity.Brand;
import com.rozemart.common.entity.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private BrandService brandService;

	@GetMapping("/products")
	public String listAll(Model model) {
		List<Product> listProducts = productService.listAll();
		model.addAttribute("listProducts", listProducts);
		return "products/products";
	}
	
	@GetMapping("/products/new")
	public String newProduct(Model model) {
		List<Brand> listBrands = brandService.listAll();
		Product product=new Product();
		product.setEnabled(true);
		product.setInStock(true);
		model.addAttribute("product", product);
		model.addAttribute("listBrands", listBrands);
		model.addAttribute("pageTitle", "Create New Product");
		return "products/product_form";
	}
	@PostMapping("/products/save")
	public String saveProduct(Product product) {
		System.out.println("Product Name: "+product);
		System.out.println("Brand Id: "+product.getBrand().getId());
		System.out.println("Category Id: "+product.getCategory().getId());
		return "redirect:/products";
	}

}
