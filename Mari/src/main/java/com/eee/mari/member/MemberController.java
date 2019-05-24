package com.eee.mari.member;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


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
		return "tiles/member/log";
	}
	
	@RequestMapping(value="/login.do")
	public ModelAndView MemberLogin(@RequestParam Map<String, String> loginMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("/member/memberLogin");
		ModelAndView mav =new ModelAndView();
		memberDTO = memberService.memberLogin(loginMap);
		System.out.println(loginMap.get("id"));
		System.out.println(memberDTO!=null);
		
		if(memberDTO != null && memberDTO.getId()!=null) {
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("isLogOn", true); // 로그온 플래그를 true로 지정
			session.setAttribute("memberInfo", memberDTO); //회원정보를 session에 저장
		}
		
		String viewName = "tiles/basicView/index";
		 mav.setViewName(viewName);
		return mav;
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
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    ModelAndView mav =new ModelAndView();
	    HttpSession session = request.getSession();
	    //session에 로그아웃처리 및 회원정보 제거
	    session.setAttribute("isLogOn", false);
	    session.removeAttribute("memberInfo");
	    mav.setViewName("redirect:/");
		return mav;
	}
	
}