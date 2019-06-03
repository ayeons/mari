package com.eee.mari.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eee.mari.member.MemberDTO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	BoardService boardService;
	
	@RequestMapping("insert.do")
	public String insert(@ModelAttribute BoardDTO dto, 
			HttpSession session)
		throws Exception {
		//로그인한 사용자의 아이디
		MemberDTO dto2=null;
		String writer=null;
		System.out.println(session.getAttribute("isLogOn"));
		
		  if((Boolean) session.getAttribute("isLogOn")) {
		  
		  dto2=(MemberDTO)session.getAttribute("memberInfo"); writer=dto2.getName(); }
		 
		
		System.out.println(dto.getContent());
		dto.setWriter(writer);
		//레코드가 저장됨
		boardService.create(dto);
		//목록갱신
		return "redirect:/board/list.do";
	}
	
	
	@RequestMapping("write.do")
	public String write() {
		return "board/write";
	}
	
	@RequestMapping("list.do")
	public ModelAndView list() throws Exception {
		List<BoardDTO> list=boardService.listAll(0, 0, "", ""); //목록 //시작번호 끝번호 빈값
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/board_list");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("list",list); //맵에 자료 저장
		mav.addObject("map",map); //데이터 저장
		return mav; //페이지 이동(출력)
		}
}
