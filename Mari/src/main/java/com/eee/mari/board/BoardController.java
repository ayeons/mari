package com.eee.mari.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eee.mari.member.MemberDTO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	BoardService boardService;
	
	String name1 = null;
	
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
	public ModelAndView list(
			@RequestParam(defaultValue="1") int curPage,
			@RequestParam(defaultValue="all") String search_option,
			@RequestParam(defaultValue="") String keyword
			) throws Exception {
		int count=boardService.countArticle(search_option, keyword); //레코드 갯수
		Pager pager=new Pager(count,curPage);
		int start=pager.getPageBegin();
		int end=pager.getPageEnd();
		List<BoardDTO> list=boardService.listAll(
				start, end, search_option, keyword); //목록
		System.out.println("list:"+list);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/board_list"); //이동할 페이지 지정
		Map<String,Object> map=new HashMap<>();
		map.put("list", list); //맵에 자료 저장
		map.put("count", count);
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("pager", pager);
		mav.addObject("map", map); //데이터 저장
		return mav; //페이지 이동
		}
	
	@RequestMapping(value="view.do", method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int bno,
			@RequestParam int curPage,
			@RequestParam String search_option,
			@RequestParam String keyword,
			HttpSession session) throws Exception {
		if((Boolean) session.getAttribute("isLogOn")) {
			  MemberDTO dto = (MemberDTO)session.getAttribute("memberInfo");
			  name1=dto.getName(); 
			  System.out.println(name1);
		}
		boardService.increaseViewcnt(bno);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto", boardService.read(bno));
		mav.addObject("curPage", curPage);
		mav.addObject("search_option", search_option);
		mav.addObject("keyword", keyword);
		mav.addObject(name1);
		return mav;
	}
	
	
	
	
	
}
