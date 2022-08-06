package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.CustomerTransDTO;
import com.chainsys.investment_manager.model.Transactions;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;

@Service
public class CustomerAccountService {
	@Autowired
	TransactionsRepository repository;
	@Autowired
	CustomerAccountRepository customerAccountRepository;
	
	public CustomerTransDTO getCustomerTransDTO(int id) {
		CustomerTransDTO dto = new CustomerTransDTO();
		Transactions tr = new Transactions();
		
		dto.setCustomerAccount(customerAccountRepository.findById(id));
		dto.setTransactionslist(repository.findAll());
		return dto;
	}
}
