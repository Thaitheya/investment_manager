package com.chainsys.investment_manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.model.Transactions;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;
@Service
public class TransactionService {
     @Autowired
     private TransactionsRepository repository;
     public List<Transactions> getAllTrans(){
          return repository.findAll();
     }  
     
     public Transactions addTransactions(Transactions transactions) {
          return repository.save(transactions);
     }
    	

    	


     
}
