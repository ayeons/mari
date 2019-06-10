package com.eee.mari.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.eee.mari.member.MemberDTO;

@Service
public class AdminService {
	
	@Inject 
	AdminDAO adminDao;
	
	public String loginCheck(MemberDTO dto) {
		return adminDao.loginCheck(dto);
	}

}
