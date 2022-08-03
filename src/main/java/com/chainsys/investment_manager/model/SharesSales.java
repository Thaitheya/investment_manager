package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
	public long getAdhaarNumber() {
		return adhaarNumber;
	}
	public void setAdhaarNumber(long adhaarNumber) {
		this.adhaarNumber = adhaarNumber;
	}
	public int getSalesId() {
		return salesId;
	}
	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}
	public Date getDateOfTxn() {
		return dateOfTxn;
	}
	public void setDateOfTxn(Date dateOfTxn) {
		this.dateOfTxn = dateOfTxn;
	}
	public int getStockId() {
		return stockId;
	}
	public void setStockId(int stockId) {
		this.stockId = stockId;
	}
	public float getSoldPrice() {
		return soldPrice;
	}
	public void setSoldPrice(float soldPrice) {
		this.soldPrice = soldPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getAmountOfInr() {
		return amountOfInr;
	}
	public void setAmountOfInr(int amountOfInr) {
		this.amountOfInr = amountOfInr;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}