package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.CustomerTransDTO;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;
@Service
public class TransactionService {
     @Autowired
     private TransactionsRepository repository;

     @Autowired
     private CustomerAccountRepository accountRepository;

     public CustomerTransDTO getCustomerTransDTO(int id)  {
    	 CustomerTransDTO dto = new CustomerTransDTO();
    	 dto.setCustomerAccount(accountRepository.findById(id));
    	 dto.setTransactionslist(repository.findAll());
    	 return dto;
     }
}
