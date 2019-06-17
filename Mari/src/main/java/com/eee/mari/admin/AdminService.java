package com.eee.mari.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class AdminService {
	
	@Inject 
	AdminDAO adminDao;
	
	public String loginCheck(AdminDTO dto) {
		return adminDao.loginCheck(dto);
	}

}
