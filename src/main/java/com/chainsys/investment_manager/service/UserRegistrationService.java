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
	@Transactional
	public Optional<UserRegistration>findByUserName(String userName){
		return registrationRepository.findByUserName(userName);
	}
	
    public boolean userExist(String userName) {
    	return findByUserName(userName).isPresent();
    }
}
