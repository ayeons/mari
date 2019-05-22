package com.eee.mari.product_list;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger=LoggerFactory.getLogger(ProductController.class);
	@Resource
	ProductService service;
	
	@RequestMapping("/list")
	public String ProductList(Model model) {
		logger.info("productlist");
		List list=service.product();
		model.addAttribute("list",list);
		return "product/product";
	}

}
