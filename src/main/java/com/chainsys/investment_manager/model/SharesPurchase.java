package com.chainsys.investment_manager.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
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
     
	
	public int getPurchaseId() {
		return purchaseId;
	}


	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}


	public long getAdhaarNumber() {
		return adhaarNumber;
	}


	public void setAdhaarNumber(long adhaarNumber) {
		this.adhaarNumber = adhaarNumber;
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

//TODO DTO
	@ManyToOne
	@JoinColumn(name = "stock_id", insertable = false, nullable = false, updatable = false)
	private StockProduct stockProduct;


	public SharesPurchase(long adhaarNumber, Date dateOfTxn, int stockId, float buyPrice, int quantity, int amountOfInr,
			String modeOfPayment, StockProduct stock_Product) {
		super();
		this.adhaarNumber = adhaarNumber;
		this.dateOfTxn = dateOfTxn;
		this.stockId = stockId;
		this.buyPrice = buyPrice;
		this.quantity = quantity;
		this.amountOfInr = amountOfInr;
		this.modeOfPayment = modeOfPayment;
		this.stockProduct = stock_Product;
	}


	public SharesPurchase() {
		// TODO Auto-generated constructor stub
	}
	
	
}

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	
