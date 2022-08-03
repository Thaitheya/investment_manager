package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name="customer_account")
public class CustomerAccount {
     @Id
	@Column(name = "adhaar_number")
     private long adhaarNumber;
	@Column(name = "deposited_amount")
     private float depositedAmount;
	@Column(name = "shares_purchased")
     private int sharesPurchased;
	@Column(name = "shares_sold")
     private int sharesSold;
	@Column(name = "amount_under_settlement")
     private int amountUnderSettlement;

     
     
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
