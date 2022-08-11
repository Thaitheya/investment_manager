package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.UserLogin;
import com.chainsys.investment_manager.repository.UserLoginRepository;

@Service

public class UserLoginService {

	@Autowired
	UserLoginRepository loginRepository;
	public UserLogin userlogin(UserLogin login) {
		return loginRepository.save(login);
		
	}
}
