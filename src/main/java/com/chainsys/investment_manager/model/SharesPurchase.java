package com.chainsys.investment_manager.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "shares_purchases")
public class SharesPurchase {
	@Id
	@Column(name = "purchase_id")
	@NotNull
	
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "purchase_id")
    @SequenceGenerator(name = "purchase_id", sequenceName = "purchase_id",  allocationSize = 8)
	private int purchaseId;
	@Column(name = "adhaar_number")
	private long adhaarNumber;
	@Column(name = "date_of_txn")
	private String dateOfTxn;
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
	@ManyToOne
	@JoinColumn(name = "stock_id", insertable = false, nullable = false, updatable = false)
	private StockProduct stockProduct;
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
	public String getDateOfTxn() {
		return dateOfTxn;
	}
	public void setDateOfTxn(String dateOfTxn) {
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
	public StockProduct getStockProduct() {
		return stockProduct;
	}
	public void setStockProduct(StockProduct stockProduct) {
		this.stockProduct = stockProduct;
	}
    
}
