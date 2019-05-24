package com.eee.mari.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eee.mari.member.MemberDTO;


@Transactional
@Service("myPageService")
public class MyPageService {
	@Resource
	MyPageDAO myPageDAO;
	
	public MemberDTO myDetailInfo(String id) throws Exception{
		return myPageDAO.selectMyDetailInfo(id);
	}
	
	public MemberDTO updateMember(Map memberMap) throws Exception{
		String id = (String)memberMap.get("id");
		myPageDAO.updateMyInfo(memberMap);
		return myPageDAO.selectMyDetailInfo(id);
	}
	
}
