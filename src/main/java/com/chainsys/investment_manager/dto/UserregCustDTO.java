package com.chainsys.investment_manager.dto;

import com.chainsys.investment_manager.model.CustomerAccount;
import com.chainsys.investment_manager.model.UserRegistration;

public class UserregCustDTO {
	private UserRegistration registration;
	private CustomerAccount account;
	public UserRegistration getRegistration() {
		return registration;
	}
	public void setRegistration(UserRegistration registration) {
		this.registration = registration;
	}
	public CustomerAccount getAccount() {
		return account;
	}
	public void setAccount(CustomerAccount account) {
		this.account = account;
	}
	
	

}
