package com.eee.mari.cart;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	@Inject
	CartService cartService;
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO dto, 
			HttpSession session) {
		//로그인 여부를 체크하기 위해 세션에 저장된 아이디 확인
		String userid=(String)session.getAttribute("userid");
		if(userid==null) { //로그인하지 않은 상태이면 로그인 화면으로 이동
			return "redirect:/member/loginMember.do";
		}
		dto.setUserid(userid);
		cartService.insert(dto); //장바구니 테이블에 저장됨
		return "redirect:/product/product"; //장바구니 목록으로 이동
	}

}
