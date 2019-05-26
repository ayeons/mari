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
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
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
			String viewName = "tiles/basicView/index";
			mav.setViewName(viewName);
		}else {//로그인시 회원정보가 존재하지 않으면....
			String message = "아이디나 비밀번호가 틀립니다. 다시 로그인 해주세요";
			mav.addObject("message",message);
			mav.setViewName("tiles/member/log");
		}
		return mav;
	}
	
	@RequestMapping("/joinMember.do")
	public String JoinMember(Model model) {
		logger.info("/member/join.jsp");
		return "tiles/member/join";
	}
	
	
	@RequestMapping("/insertMember.do")
	public ResponseEntity insertMember(@ModelAttribute("memberDTO")MemberDTO member, HttpServletRequest request, HttpServletResponse response) {
		ResponseEntity resEntity=null;
		String message=null;
		HttpHeaders responseHeaders = new HttpHeaders();
		try {
			memberService.insertMember(member);
			 message = "<script>";
			    message +="alert('회원가입완료.로그인 창으로 이동합니다.');";
			    message +="location.href='"+request.getContextPath()+"/member/loginMember.do'";
			    message += "</script>";
		}catch (Exception e) {
			 message = "<script>";
	         message +="alert('작업중 오류발생. 다시 시도해 주세요');";
	         message +="location.href='"+request.getContextPath()+"/member/joinMember.do'";
	         message += "</script>";
		}
		 resEntity = new ResponseEntity(message,responseHeaders,HttpStatus.OK);
		 return resEntity;
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