package com.eee.mari.cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {
	
	@Inject
	SqlSession sqlSession;
	
	
	
	public List<CartDTO> cartMoney(){
		return null;
	}
	
	public void insert(CartDTO dto) {
		sqlSession.insert("cart.insert", dto);
	}
	
	public void delete(int cart_id) {
		sqlSession.delete("cart.delete", cart_id);
	}
	public void deleteAll(String userid) {
		System.out.println("dao " + userid);
		sqlSession.delete("cart.deleteAll", userid);
	}
	
	public void update(int cart_id) {
		
	}
	
	public int sumMoney(String userid) {
		return sqlSession.selectOne("cart.sumMoney", userid);
	}
	
	public int countCart(String userid, int product_id) {
		return 1;
	}
	
	public void updateCart(CartDTO dto) {
		
	}

	public void modifyCart(CartDTO dto) {
		
	}

	public List<CartDTO> listCart(String userid) {
		return sqlSession.selectList("cart.listCart", userid);
	}
}
