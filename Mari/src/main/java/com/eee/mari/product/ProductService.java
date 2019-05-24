package com.eee.mari.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eee.mari.product.ProductDTO;

@Transactional
@Service
public class ProductService {
	
	@Resource
	ProductDAO productDao;
	
	
	public List<ProductDTO> listProduct() {
		return productDao.listProduct();
	}

	public Object detailProduct(int product_id) {
		return productDao.detailProduct(product_id);
	}


}
