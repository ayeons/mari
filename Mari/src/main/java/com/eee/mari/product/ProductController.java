package com.eee.mari.product;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/*") //공통 url mapping
public class ProductController {
	
	@Inject
	ProductService Service;
	
	@RequestMapping("list") //세부 url
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("product/product"); //이동할 페이지 이름
		mav.addObject("list",Service.listProduct()); //데이터저장
		return mav; //페이지 이동
	}
	
	@RequestMapping("/detail/{product_id}")
	public ModelAndView detail(
			@PathVariable("product_id") int product_id,
			ModelAndView mav) {
		mav.setViewName("product/product_detail");
		mav.addObject("dto", Service.detailProduct(product_id));
		return mav;
	}		
}
