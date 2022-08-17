package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "transactions")
public class Transactions {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "transaction_id")
	@NotNull
	private int transactionId;
	@Column(name = "transaction_date")
	private String transactionDate;
	@Column(name = "customer_id")
	@NotNull
	private int customerId;
	@Column(name = "adhaar_number")
	@NotNull
	private long adhaarNumber;
	@Column(name = "description")
	@NotNull
	private String description;
	@Column(name = "amount_received")
	@NotNull
	private int amountReceived;
	@Column(name = "amount_paid")
	@NotNull
	private int amountPaid;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id", insertable = false, nullable = false, updatable = false)
	private CustomerAccount account;
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public String getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAmountReceived() {
		return amountReceived;
	}
	public void setAmountReceived(int amountReceived) {
		this.amountReceived = amountReceived;
	}
	public int getAmountPaid() {
		return amountPaid;
	}
	public void setAmountPaid(int amountPaid) {
		this.amountPaid = amountPaid;
	}
	public CustomerAccount getAccount() {
		return account;
	}
	public void setAccount(CustomerAccount account) {
		this.account = account;
	}

	

}
