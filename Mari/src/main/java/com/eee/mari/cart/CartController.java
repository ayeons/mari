package com.eee.mari.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eee.mari.member.MemberDTO;
import com.eee.mari.product.ProductDTO;
import com.eee.mari.product.ProductService;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Inject
	CartService cartService;
	ProductService Service;
	
	String userid = null;
	String userid2 = null;
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO dto, 
			HttpSession session) {
		//로그인 여부를 체크하기 위해 세션에 저장된 아이디 확인
		MemberDTO dto2=null;
		String writer=null;
		if((Boolean) session.getAttribute("isLogOn")) {
			dto2=(MemberDTO)session.getAttribute("memberInfo");
			writer=dto2.getId();
			System.out.println(writer);
		}else {
			return "redirect:/member/loginMember.do";
		}
		userid=writer;
		dto.setUserid(userid);
		cartService.insert(dto); //장바구니 테이블에 저장됨
		return "redirect:/cart/list.do"; //장바구니 목록으로 이동
	}
	
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		Map<String, Object> map=new HashMap<>();
		MemberDTO dto2=(MemberDTO) session.getAttribute("memberInfo");
		userid=dto2.getId();
		System.out.println(userid);
		if(userid!=null) {
			List<CartDTO> list=cartService.listCart(userid); //장바구니 목록
			int sumMoney=cartService.sumMoney(userid); //금액 합계
			int fee=sumMoney >= 3000000 ? 2500 : 0; //배송료
			map.put("fee", fee);
			map.put("sum",sumMoney+fee);
			map.put("list", list);// 장바구니 목록
			map.put("count", list.size());
			mav.setViewName("cart/list");
			mav.addObject("map", map); 
			return mav; 
		}else {
			return new ModelAndView("member/log", "", null);
		}
	}
	
	@RequestMapping("delete.do")
	public String delete(@RequestParam int cart_id) {
		cartService.delete(cart_id);
		return "redirect:/cart/list.do";
	}
	
	@RequestMapping("deleteAll.do")
	public String deleteAll(HttpSession session) {
		session.getAttribute("isLogOn");
		MemberDTO dto2=(MemberDTO) session.getAttribute("memberInfo");
		userid=dto2.getId();
		System.out.println(userid);
		if(userid!=null) {		
		cartService.deleteAll(userid);
		}
		return "redirect:/cart/list.do";
	}
	
	@RequestMapping("update.do")
	public String update(
			int[] amount, int[] cart_id, HttpSession session) {
			session.getAttribute("isLogOn");
			MemberDTO dto2=(MemberDTO) session.getAttribute("memberInfo");
			userid=dto2.getId();
			System.out.println(userid);
		for(int i=0; i<cart_id.length; i++) {
			if(amount[i]==0) {
				cartService.delete(cart_id[i]);
			}else {
				CartDTO dto=new CartDTO();
				dto.setUserid(userid);
				dto.setCart_id(cart_id[i]);
				dto.setAmount(amount[i]);
				cartService.modifyCart(dto);
			}
		}
		return "redirect:/cart/list.do";
	}
	

}
