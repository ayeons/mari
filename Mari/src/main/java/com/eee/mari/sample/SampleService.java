package com.eee.mari.sample;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional

@Service
public class SampleService {
	@Resource
	SampleDAO dao;
	public List sample() {
		return dao.sample();
	}
	
}
