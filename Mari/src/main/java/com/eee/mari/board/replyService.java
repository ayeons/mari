package com.eee.mari.board;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class replyService {
	
	@Inject
	ReplyDAO replyDao;
	
	public List<ReplyDTO> list(Integer bno, int start, int end, HttpSession session) {
		return null;
	}
	
	public int count(int bno) {
		return 1;
	}
	
	public void create(ReplyDTO dto) {
		replyDao.create(dto);
	}
	
	public void update(ReplyDTO dto) {
		
	}
	
	public void delete(Integer rno) {
		
	}
	
	public ReplyDTO detail(int rno) {
		return null;
	}

}
