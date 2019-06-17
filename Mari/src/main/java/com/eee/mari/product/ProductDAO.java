package com.eee.mari.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eee.mari.product.ProductDTO;

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
	
	public void insertProduct(ProductDTO dto) {
		sqlSession.insert("product.insert", dto);
		
	}

	public void updateProduct(ProductDTO dto) {
		sqlSession.update("product.update_product", dto);
		
	}
	
	public void deleteProduct(int product_id) {
		sqlSession.delete("product.product_delete", product_id);
	}

	public String fileInfo(int product_id) {
		return sqlSession.selectOne("product.file_info", product_id);
	}

	
}


