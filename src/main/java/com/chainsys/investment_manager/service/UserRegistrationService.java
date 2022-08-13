package com.chainsys.investment_manager.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.info.ProjectInfoProperties.Build;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.UserRegisterDTO;
import com.chainsys.investment_manager.dto.UserregCustDTO;
import com.chainsys.investment_manager.model.UserRegistration;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.UserRegistrationRepository;

@Service
public class UserRegistrationService {
	@Autowired
	UserRegistrationRepository registrationRepository;
	public UserRegistration createUser(UserRegistration userRegistration) {
		return registrationRepository.save(userRegistration);
	}
	
	public UserRegistration getEmailAndPasssword(String email, String password) {
		return registrationRepository.findByEmailAndPassword(email, password);
	}
}
