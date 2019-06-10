package com.eee.mari.admin;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.eee.mari.member.MemberDTO;

@Repository
public class AdminDAO {
	
	@Inject
	SqlSession sqlSession;
	
	public String loginCheck(MemberDTO dto) {
		return sqlSession.selectOne("admin.login_check", dto);
	}

}
