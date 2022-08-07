package com.chainsys.investment_manager.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "stock_product")
public class StockProduct {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name = "stock_id")
	@NotNull
	@Size(min = 4, max = 6, message = "Please enter the valid min 4 or max 6 digit")
	private int stockId; 
	@Column(name = "adhaar_number")
	@NotEmpty
	@Size(min = 12, message = "Adhaar number should be have 12 numbers")
	private long adhaarNumber;
	@Column(name = "stock_name")
	@NotEmpty
	@Size(min = 2, max = 50, message = "Stock name should be atleast 2 characters")
	private String stockName;
	@Column(name = "company")
	@Size(min = 2, max = 50, message = "Company name should be atleast 2 characters")
	private String company;
	@Column(name ="no_of_shares_in_hand")
	@NotEmpty
	@Size(min = 1, message = "The section should not be empty")
	private int noOfSharesInHand;
	@Column(name = "face_value")
	@NotEmpty
	@Size(min = 1, message = "please enter the valid face value")
	private float faceValue;
	@Column(name = "last_tansactioned_date")
	@NotEmpty
	@DateTimeFormat
	private Date lastTansactionedDate;
	@Column(name = "last_tansactioned_value")
	@NotEmpty
	@Size(min = 1 ,max = 100000, message = "transaction much be in limit 1L")
	private float lastTansactionedValue;
	
	public int getStockId() {
		return stockId;
	}

	public void setStockId(int stockId) {
		this.stockId = stockId;
	}

	public long getAdhaarNumber() {
		return adhaarNumber;
	}

	public void setAdhaarNumber(long adhaarNumber) {
		this.adhaarNumber = adhaarNumber;
	}

	public String getStockName() {
		return stockName;
	}

	public void setStockName(String stockName) {
		this.stockName = stockName;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getNoOfSharesInHand() {
		return noOfSharesInHand;
	}

	public void setNoOfSharesInHand(int noOfSharesInHand) {
		this.noOfSharesInHand = noOfSharesInHand;
	}

	public float getFaceValue() {
		return faceValue;
	}

	public void setFaceValue(float faceValue) {
		this.faceValue = faceValue;
	}

	public Date getLastTansactionedDate() {
		return lastTansactionedDate;
	}

	public void setLastTansactionedDate(Date lastTansactionedDate) {
		this.lastTansactionedDate = lastTansactionedDate;
	}

	public float getLastTansactionedValue() {
		return lastTansactionedValue;
	}

	public void setLastTansactionedValue(float lastTansactionedValue) {
		this.lastTansactionedValue = lastTansactionedValue;
	}
    @OneToMany(
    		mappedBy = "stockProduct",
    		cascade = CascadeType.ALL
    		)
    
	private List<SharesPurchase> sharesPurchases = new ArrayList<>();
     
    @OneToMany(
    		mappedBy = "stockProduct",
    		cascade = CascadeType.ALL
    		)
    
    private List<SharesSales> sharesSales = new ArrayList<>();
    

}