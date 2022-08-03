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

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
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
     @ManyToOne(fetch = FetchType.LAZY)
     @JoinColumn(name = "stock_id", insertable=false , nullable=false, updatable=false)
     private Stock_Product stock_Product; 
}

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	
