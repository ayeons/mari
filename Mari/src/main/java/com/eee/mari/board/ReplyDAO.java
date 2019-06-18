package com.eee.mari.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	
	@Inject
	SqlSession sqlsession; 
	
	public List<ReplyDTO> list(Integer bno, int start, int end) {
		return null;
	}
	
	public int count(int bno) {
		return 0;
	}

	public void create(ReplyDTO dto) {
		sqlsession.insert("reply.insertReply", dto);
	}
	
	public void update(ReplyDTO dto) {
		
	}
	
	public void delete(Integer rno) {
		
	}
	
	public ReplyDTO detail(int rno) {
		return null;
	}

}
