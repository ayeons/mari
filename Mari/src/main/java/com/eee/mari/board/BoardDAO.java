package com.eee.mari.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public BoardDTO read(int bno) throws Exception {
		return sqlSession.selectOne("board.view", bno);
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
		Map<String,Object> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.listAll", map);
	}
	
	//조회수 증가 처리
	public void increaseViewCnt(int bno) throws Exception{
		sqlSession.update("board.increaseViewcnt", bno);
	}
	
	//레코드 갯수 계산
	public int countArticle(String search_option, String keyword)
		throws Exception{
		Map<String,String> map=new HashMap<>();
		map.put("search_option", search_option);
		map.put("keyword", keyword);
		return sqlSession.selectOne("board.countArticle", map);
	}
	
	
	

}
