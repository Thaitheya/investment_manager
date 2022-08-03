package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name="user_registration")
public class UserRegistration {
     @Id
     @Column(name = "adhaar_number")
     private long adhaarNumber;
	@Column(name ="first_name")
     private String firstName;
	@Column(name = "last_name")
     private String lastName;
	@Column(name = "user_name")
     private String userName;
     @Column(name = "password")
     private String password;
	@Column(name = "pan_number")
     private int panNumber;
	@Column(name = "address")
     private String address;
	@Column(name = "phone_number")
     private long phoneNumber;
     
     @ManyToOne(fetch = FetchType.LAZY)
     @JoinColumn(name = "transaction_pk_id",referencedColumnName = "transaction_id")
     private Transactions transactions;

     @OneToOne(fetch = FetchType.LAZY)
     @JoinColumn(name = "customer_fk_id",referencedColumnName = "adhaar_number")
     private CustomerAccount customerAccount;
     @OneToMany(fetch = FetchType.LAZY)
     @JoinColumn(name = "share_p__fk_id", referencedColumnName = "purchase_id")
     private SharesPurchase sharesPurchase;

     @OneToMany(fetch = FetchType.LAZY)
     @JoinColumn(name = "share_s_fk_id", referencedColumnName = "sales_id")
     private SharesSales sharesSales;

     @OneToOne(fetch = FetchType.LAZY)
     @JoinColumn(name = "stock_fk_id", referencedColumnName = "stock_id")
     private Stock_Product stock_Product; 
}