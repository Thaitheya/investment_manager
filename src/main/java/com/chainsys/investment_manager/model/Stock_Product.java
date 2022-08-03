package com.chainsys.investment_manager.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "stock_product")
public class Stock_Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "stock_id")
	private int stockId; 
	@Column(name = "adhaar_number")
	private long adhaarNumber;
	@Column(name = "stock_name")
	private String stockName;
	@Column(name = "company")
	private String company;
	@Column(name ="no_of_shares_in_hand")
	private int noOfSharesInHand;
	@Column(name = "face_value")
	private float faceValue;
	@Column(name = "last_tansactioned_date")
	private Date lastTansactionedDate;
	@Column(name = "last_tansactioned_value")
	private float lastTansactionedValue;
	 
	@OneToMany(mappedBy = "stock_Product", fetch = FetchType.LAZY)
     private List<SharesPurchase> purchaselist;

	// @ManyToMany(mappedBy = "stock_product", fetch = FetchType.LAZY)
	// @JoinColumn(name = "sales_pk_id", referencedColumnName = "sales_id")
	// private SharesSales sales;
	
}
