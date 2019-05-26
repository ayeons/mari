package com.eee.mari.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Inject 
	SqlSession sqlSession;
	
	//첨부파일 삭제
	public void deleteFile(String fullName) {
		
	}
	
	//첨부파일 목록
	public List<String> getAttach(int bno) {
		return null;
	}
	
	//첨부파일 저장
	public void addAttach(String fullName) {
		
	}
	
	//첨부파일 수정
	public void updateAttach(String fullName, int bno) {
		
	}
	
	//글쓰기
	public void create(BoardDTO dto) throws Exception {

		sqlSession.insert("board.insert", dto);
		
	}
	
	//글읽기
	public void BoardDTOread(int bno) throws Exception {
	
	}
	
	//글수정
	public void update(BoardDTO dto) throws Exception{
		
	}
	
	//글삭제
	public void delete(int bno) throws Exception {
		
	}
	
	//게시물 목록
	public List<BoardDTO> listAll(int start, int end,
			String search_option, String keyword) throws Exception{
		return sqlSession.selectList("board.listAll");
	}
	
	//조회수 증가 처리
	public void increaseViewCnt(int bno) throws Exception{
		
	}
	
	//레코드 갯수 계산
	public int countArticle(String search_option, String keyword)
		throws Exception{
		return 1;
	}
	
	
	

}
