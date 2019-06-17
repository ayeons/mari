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

	public ProductDTO detailProduct(int product_id) {
		return productDao.detailProduct(product_id);
	}

	public void insertProduct(ProductDTO dto) {
		productDao.insertProduct(dto);
	}
	
	public void updateProduct(ProductDTO dto) {
		productDao.updateProduct(dto);
	}
	
	public void deleteProduct(int product_id) {
		productDao.deleteProduct(product_id);
	}

	public String fileInfo(int product_id) {
		return productDao.fileInfo(product_id);
	}

}
