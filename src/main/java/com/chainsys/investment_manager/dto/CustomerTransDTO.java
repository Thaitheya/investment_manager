package com.chainsys.investment_manager.dto;

import java.util.List;
import java.util.Optional;

import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.Transactions;

public class CustomerTransDTO {
     List<Transactions> transactions;
     Optional<CustomerAccount> customerAccount;
     public List<Transactions> getTransactions() {
          return transactions;
     }
     public void setTransactions(List<Transactions> transactions) {
          this.transactions = transactions;
     }
     public Optional<CustomerAccount> getCustomerAccount() {
          return customerAccount;
     }
     public void setCustomerAccount(Optional<CustomerAccount> optional) {
          this.customerAccount = optional;
     }


}
