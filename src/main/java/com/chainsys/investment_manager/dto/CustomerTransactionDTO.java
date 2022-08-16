package com.chainsys.investment_manager.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.Transactions;

public class CustomerTransactionDTO {
     @Autowired
     private CustomerAccount account;

     private List<Transactions> transactionlList = new ArrayList<>();

     public CustomerAccount getAccount() {
          return account;
     }
     public void setAccount(CustomerAccount account) {
          this.account = account;
     }

     public List<Transactions> getTransactions() {
          return transactionlList;
     }
     public void addTransactions(Transactions transactions) { 
          transactionlList.add(transactions);
     }
     

}
