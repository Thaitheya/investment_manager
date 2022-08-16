package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transactions")
public class Transactions {
     @Id
	@Column(name = "transaction_id")
     private long transactionId;
	@Column(name = "transaction_date")
     private Date transactionDate;
	@Column(name = "adhaar_number")
     private long adhaarNumber;
	@Column(name = "description")
     private String description;
	@Column(name = "amount_received")
     private int amountReceived;
	@Column(name = "amount_paid")
     private int amountPaid;
	public long getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(long transactionId) {
		this.transactionId = transactionId;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
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
    
}
