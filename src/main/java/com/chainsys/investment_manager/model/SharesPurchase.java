package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "shares_purchases")
public class SharesPurchase {
     @Id
	@Column(name = "purchase_id")
     private int purchaseId;
     @Column(name = "adhaar_number")
     private long adhaarNumber;
	@Column(name = "date_of_txn")
     private Date dateOfTxn;
	@Column(name = "stock_id")
     private int stockId;
	@Column(name = "buy_price")
     private float buyPrice;
	@Column(name = "quantity")
     private int quantity;
	@Column(name = "amount_of_inr")
     private int amountOfInr;
	@Column(name = "mode_of_payment")
     private String modeOfPayment;
     public long getAdhaarNumber() {
          return adhaarNumber;
     }
     public void setAdhaarNumber(long adhaarNumber) {
          this.adhaarNumber = adhaarNumber;
     }
     public int getPurchaseId() {
          return purchaseId;
     }
     public void setPurchaseId(int purchaseId) {
          this.purchaseId = purchaseId;
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
     public float getBuyPrice() {
          return buyPrice;
     }
     public void setBuyPrice(float buyPrice) {
          this.buyPrice = buyPrice;
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
     public String getModeOfPayment() {
          return modeOfPayment;
     }
     public void setModeOfPayment(String modeOfPayment) {
          this.modeOfPayment = modeOfPayment;
     }
	
	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	


}
