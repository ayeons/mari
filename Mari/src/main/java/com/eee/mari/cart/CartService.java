package com.eee.mari.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class CartService {
	
	@Inject
	CartDAO cartDao;
	
	
	public List<CartDTO> cartMoney(){
		return null;
	}
	
	public void insert(CartDTO dto) {
		cartDao.insert(dto);
	}
	
	public List<CartDTO> listCart(String userid){
		return null;
	}
	
	public void delete(int cart_id) {
		
	}
	
	public void deleteAll(String userid) {
		
	}
	
	public void update(int cart_id) {
		
	}
	
	public void sumMoney(String userid) {
		
	}
	
	public int countCart(String userid, int product_id) {
		return 1;
	}
	
	public void updateCart(CartDTO dto) {
		
	}
	
	public void modifyCart(CartDTO dto) {
		
	}

}
