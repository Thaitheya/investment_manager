package com.chainsys.investment_manager.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.Transactions;

public class CustomerTransDTO {

	List<Transactions> transactionslist = new ArrayList<>();
	private CustomerAccount customerAccount;
	public List<Transactions> getTransactionslist() {
		return transactionslist;
	}
	public void setTransactionslist(List<Transactions> transactionslist) {
		this.transactionslist = transactionslist;
	}
	public CustomerAccount getCustomerAccount() {
		return customerAccount;
	}
	public void setCustomerAccount(CustomerAccount customerAccount) {
		this.customerAccount = customerAccount;
	}
	
}
