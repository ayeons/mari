package com.eee.mari.member;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("memberService")
public class MemberService {
	@Resource
	MemberDAO memberDAO;
	
	public MemberDTO memberLogin(Map loginMap) throws Exception{
		return memberDAO.memberLogin(loginMap);
	}
	
	public void insertMember(MemberDTO memberDTO) throws Exception{
		memberDAO.insertMember(memberDTO);
	}
	
}
