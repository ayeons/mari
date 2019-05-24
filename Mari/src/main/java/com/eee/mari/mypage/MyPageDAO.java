package com.eee.mari.mypage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eee.mari.member.MemberDTO;


@Repository
public class MyPageDAO {
	@Autowired
	SqlSession ss;
	
	public void updateMyInfo(Map memberMap) throws Exception{
		ss.update("member.updateMember", memberMap);
	}
	
	public MemberDTO selectMyDetailInfo(String id) throws Exception{
		return ss.selectOne("member.selectMyDetailInfo", id);
	}
	
}
