package com.chainsys.investment_manager.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "user_registration")
public class UserRegistration {
	@Id
	@GeneratedValue
	@Column(name = "adhaar_number")
	private long adhaarNumber;
	@Column(name = "first_name")
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
	@OneToOne(mappedBy = "registration", fetch = FetchType.LAZY)
	private CustomerAccount account;

	public long getAdhaarNumber() {
		return adhaarNumber;
	}

	public void setAdhaarNumber(long adhaarNumber) {
		this.adhaarNumber = adhaarNumber;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(int panNumber) {
		this.panNumber = panNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public CustomerAccount getAccount() {
		return account;
	}

	public void setAccount(CustomerAccount account) {
		this.account = account;
	}

}