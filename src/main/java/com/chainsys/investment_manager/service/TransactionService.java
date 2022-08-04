package com.chainsys.investment_manager.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.investment_manager.dto.CustomerTransDTO;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;

public class TransactionService {
     @Autowired
     private TransactionsRepository repository;

     @Autowired
     CustomerAccountRepository accountRepository;

     public CustomerTransDTO customerTransDTO(int id) {
          CustomerTransDTO dto = new CustomerTransDTO();
          dto.setCustomerAccount(accountRepository.findById(id));
          dto.setTransactions(repository.findAll());
          return dto;
     }

}
