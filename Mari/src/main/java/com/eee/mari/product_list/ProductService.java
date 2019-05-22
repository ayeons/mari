package com.eee.mari.product_list;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("productService")
public class ProductService {
	
	@Resource
	ProductDAO dao;
	public List product() {
		return dao.listProduct();
	}

}
