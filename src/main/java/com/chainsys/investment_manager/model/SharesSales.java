package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name="shares_sales")
public class SharesSales {
     @Id
	@Column(name = "adhaar_number")
     private long adhaarNumber;
	@Column(name = "sales_id")
     private int salesId;
	@Column(name = "date_of_txn")
     private Date dateOfTxn;
	@Column(name = "stock_id")
     private int stockId;
	@Column(name = "sold_price")
     private float soldPrice;
	@Column(name = "quantity")
     private int quantity;
	@Column(name = "amount_of_inr")
     private int amountOfInr;
     @ManyToMany(fetch = FetchType.LAZY)
     @JoinColumn(name = "stock_id")
     private Stock_Product stock_Product; 
	
	

}
