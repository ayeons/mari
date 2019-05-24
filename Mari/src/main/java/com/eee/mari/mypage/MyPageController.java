package com.eee.mari.mypage;



import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eee.mari.member.MemberDTO;


@Controller
@RequestMapping("/mypage")
public class MyPageController {
	private static final Logger logger=LoggerFactory.getLogger(MyPageController.class);
	@Resource
	MyPageService myPageService;
	
	MemberDTO memberDTO;
	
	@RequestMapping("/myDetailInfo.do")
	public ModelAndView myDetailInfo(HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("/mypage/myDetailInfo.jsp");
		HttpSession session = request.getSession();
		memberDTO = (MemberDTO)session.getAttribute("memberInfo");
		String id = memberDTO.getId();
		String viewName = "tiles/mypage/myDetailInfo";
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping("/updateMember.do")
	public ModelAndView modifyMyInfo( @RequestParam Map<String, String> memberMap,
              HttpServletRequest request,
              HttpServletResponse response) throws Exception {
		
		System.out.println(memberMap.get("id ") + memberMap.get("pwd ") + memberMap.get("name "));
		String val[]=null;
		HttpSession session = request.getSession();
		
		memberDTO = (MemberDTO)session.getAttribute("memberInfo");
		String id = memberDTO.getId();
		
		memberDTO = myPageService.updateMember(memberMap);
		session.removeAttribute("memberInfo");
		session.setAttribute("memberInfo", memberDTO);

//		String message = null;
//		ResponseEntity resEntity = null;
//		HttpHeaders responseHeaders = new HttpHeaders();
//		message = "mod_success";
//		resEntity = new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		String viewName = "tiles/mypage/myDetailInfo";
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
}
