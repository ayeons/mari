package com.eee.mari.member;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger logger=LoggerFactory.getLogger(MemberController.class);
	@Resource
	MemberService memberService;
	
	MemberDTO memberDTO;
	
	@RequestMapping("/loginMember.do")
	public String LoginMember(Model model) {
		logger.info("/member/loginMember.jsp");
//		List list=memberService.sample();
//		model.addAttribute("list",list);
		return "tiles/member/loginMember";
	}
	
	@RequestMapping(value="/login.do")
	public String MemberLogin(Model model, @RequestParam Map<String, String> loginMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("/member/memberLogin");
		memberDTO = memberService.memberLogin(loginMap);
		System.out.println(memberDTO!=null);
		
//		if(memberDTO != null && memberDTO.getId()!=null) {
//			HttpSession session = request.getSession();
//			session = request.getSession();
//			session.setAttribute("isLogOn", true); // 로그온 플래그를 true로 지정
//			session.setAttribute("memberInfo", memberDTO); //회원정보를 session에 저장
//		}
		return "redirect:/member/loginMember.do";
	}
	
	@RequestMapping("/joinMember.do")
	public String JoinMember(Model model) {
		logger.info("/member/memberForm.jsp");
		return "tiles/member/memberForm";
	}
	
	@RequestMapping("/insertMember.do")
	public String InsertMember(Model model, MemberDTO memberDTO, HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("/member/InsertMember");
		response.setContentType("text/html;charset=utf-8");
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html;charset=utf-8");
		memberService.insertMember(memberDTO);
		return "redirect:/member/loginMember.do";
	}
}
