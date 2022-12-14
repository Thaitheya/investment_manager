package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.investment_manager.model.UserRegistration;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.UserRegistrationRepository;

@Service
public class UserRegistrationService {
	@Autowired
	UserRegistrationRepository registrationRepository;
	@Autowired
	CustomerAccountRepository accountRepository;

	public UserRegistration createUser(UserRegistration userRegistration) {
		return registrationRepository.save(userRegistration);
	}
	
	public UserRegistration getEmailAndPasssword(String email, String password) {
		return registrationRepository.findByEmailAndPassword(email, password);
	}
}
