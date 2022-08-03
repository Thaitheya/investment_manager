package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
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
	@Column(name = "amount_recieved")
     private int amountReceived;
	@Column(name = "amount_paid")
     private int amountPaid;

}
