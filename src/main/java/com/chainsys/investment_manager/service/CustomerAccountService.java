package com.chainsys.investment_manager.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.investment_manager.dto.CustomerTransactionDTO;
import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.Transactions;
import com.chainsys.investment_manager.repository.CustomerAccountRepository;
import com.chainsys.investment_manager.repository.TransactionsRepository;

@Service
public class CustomerAccountService {
	@Autowired
	TransactionsRepository repository;
	@Autowired
	CustomerAccountRepository customerAccountRepository;
	public CustomerTransactionDTO getCustomerTransDTO(int id)  {
		CustomerAccount account = findById(id);
		CustomerTransactionDTO dto = new CustomerTransactionDTO();
		dto.setAccount(account);
		List<Transactions> transactions = repository.findAll();
		Iterator<Transactions> itr = transactions.iterator();
		while(itr.hasNext()) {
			dto.addTransactions(itr.next());
		}
		return dto;
			}
	public CustomerAccount findById(int id) {
		return customerAccountRepository.findById(id);
	}
	 public CustomerAccount addcustomerDetails(CustomerAccount customerAccount) {
         return customerAccountRepository.save(customerAccount);
    }
	 public List<CustomerAccount> accounts(){
		 return customerAccountRepository.findAll();
	 }
	 public CustomerAccount findByAdhaar(String adhaar) {
			return customerAccountRepository.findByAdhaarNumber(adhaar);
		}
	 public CustomerAccount addCustomer(CustomerAccount account) {
         return customerAccountRepository.save(account);
    }
}
