package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;

@Service
public class CustomerAccountService {
	@Autowired
	TransactionsRepository repository;
	@Autowired
	CustomerAccountRepository customerAccountRepository;
	public CustomerAccount getCustomer(CustomerAccount account) {
		return customerAccountRepository.save(account);
		
	}
}
