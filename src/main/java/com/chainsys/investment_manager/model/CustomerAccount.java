package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "customer_account")
public class CustomerAccount {
	@Id
	@Column(name = "customer_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "customer_id")
//	@SequenceGenerator(name ="customer_id", sequenceName = "customer_id",allocationSize = 1)
	@NotNull
	private int customerId;
	@Column(name = "adhaar_number")
	@NotNull
	private long adhaarNumber;
	@Column(name = "deposited_amount")
	private float depositedAmount;
	@Column(name = "shares_purchased")
	private int sharesPurchased;
	@Column(name = "shares_sold")
	private int sharesSold;
	@Column(name = "amount_under_settlement")
	private int amountUnderSettlement;
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public long getAdhaarNumber() {
		return adhaarNumber;
	}
	public void setAdhaarNumber(long adhaarNumber) {
		this.adhaarNumber = adhaarNumber;
	}
	public float getDepositedAmount() {
		return depositedAmount;
	}
	public void setDepositedAmount(float depositedAmount) {
		this.depositedAmount = depositedAmount;
	}
	public int getSharesPurchased() {
		return sharesPurchased;
	}
	public void setSharesPurchased(int sharesPurchased) {
		this.sharesPurchased = sharesPurchased;
	}
	public int getSharesSold() {
		return sharesSold;
	}
	public void setSharesSold(int sharesSold) {
		this.sharesSold = sharesSold;
	}
	public int getAmountUnderSettlement() {
		return amountUnderSettlement;
	}
	public void setAmountUnderSettlement(int amountUnderSettlement) {
		this.amountUnderSettlement = amountUnderSettlement;
	}
	
		

}