package com.eee.mari.product_list;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Inject 
	SqlSession sqlSession;
		
		public List<ProductDTO> listProduct() {
			return sqlSession.selectList("product.list_product");
		}
		
		public ProductDTO detailProduct(int product_id) {
			return sqlSession.selectOne(
					"product.detail_product", product_id);
		}
	
		
		}
	

