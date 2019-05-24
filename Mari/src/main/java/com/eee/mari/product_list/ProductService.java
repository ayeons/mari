package com.eee.mari.product_list;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ProductService {
	
	@Resource
	ProductDAO productDao;
	
	
	public List<ProductDTO> listProduct() {
		return productDao.listProduct();
	}

<<<<<<< HEAD

	public Object detailProduct(int product_id) {
		return productDao.detailProduct(product_id);
	}

=======
>>>>>>> branch 'master' of https://github.com/ayeons/mari.git
}
