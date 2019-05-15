package com.eee.mari.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession ss;
	
	public List sample() {
		
		return ss.selectList("sample.select");
	}
	
	public MemberDTO memberLogin(Map loginMap) throws Exception{
		return ss.selectOne("member.memberLogin", loginMap);
	}
	
	public void insertMember(MemberDTO memberDTO) throws Exception {
		ss.insert("member.insertMember", memberDTO);
	}
	
	public void updateMember(MemberDTO memberDTO) throws Exception{
		ss.update("member.updateMember", memberDTO);
	}
	
}
