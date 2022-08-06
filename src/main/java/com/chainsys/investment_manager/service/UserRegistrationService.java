package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.UserregCustDTO;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.User_registrationRepository;

@Service
public class UserRegistrationService {

	@Autowired 
	CustomerAccountRepository accountRepository;
	
	@Autowired
	User_registrationRepository registrationRepository;
	
	
	public UserregCustDTO userRegCustDTO(int id) {
		UserregCustDTO dto = new UserregCustDTO();
		dto.setAccount(accountRepository.findById(id));
		dto.setRegistration(registrationRepository.getReferenceById(id));
		return dto;
		
	}
}
