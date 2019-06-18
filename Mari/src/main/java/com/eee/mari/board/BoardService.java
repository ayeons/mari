package com.eee.mari.board;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service 
public class BoardService {
	
	@Inject
	BoardDAO boardDao;
	
	public void deleteFile(String fullName) {
		
	}
	
	public List<String> getAttach(int bno){
		return null;
	}
	
	public void addAttach(String fullName) {
		
	}
	
	public void updateAttach(String fullName, int bno) {
		
	}
	
	public void create(BoardDTO dto) throws Exception{

		boardDao.create(dto);

	}
	
	public BoardDTO read(int bno) throws Exception {
		return boardDao.read(bno);
	}
	
	public void update(BoardDTO dto) throws Exception{
		
	}
	
	public void delete(int bno) throws Exception{
		
	}
	
	public List<BoardDTO> listAll(int start, int end, String search_option,
			String keyword) throws Exception{
		return boardDao.listAll(start, end, search_option, keyword);
	}
	
	public void increaseViewcnt(int bno) throws Exception{
		boardDao.increaseViewCnt(bno);
	}
	
	public int countArticle(String search_option, String keyword) throws Exception{
		return boardDao.countArticle(search_option, keyword);
	}

}
