package com.chainsys.investment_manager.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "customer_account")
public class CustomerAccount {
	@Id
	@Column(name = "customer_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	@NotNull
	private int customerId;
	@Column(name = "adhaar_number")
	@NotNull
	private String adhaarNumber;
	@Column(name = "deposited_amount")
	private float depositedAmount;
	@Column(name = "shares_purchased")
	private int sharesPurchased;
	@Column(name = "shares_sold")
	private int sharesSold;
	@Column(name = "amount_under_settlement")
	private int amountUnderSettlement;
	@OneToMany(
         mappedBy = "account",cascade = CascadeType.ALL
	)
	private List<Transactions> transactions = new ArrayList<>();
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getAdhaarNumber() {
		return adhaarNumber;
	}
	public void setAdhaarNumber(String adhaarNumber) {
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
	public List<Transactions> getTransactions() {
		return transactions;
	}
	public void setTransactions(List<Transactions> transactions) {
		this.transactions = transactions;
	}
	
	
	
	
}