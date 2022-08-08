package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Table(name = "user_registration")
@Entity
public class UserRegistration {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name = "adhaar_number")
	private long adhaarNumber;

	@Column(name = "first_name")
	@NotEmpty
	@Size(min = 2, message = "firstname should have at least 2 characters")
	private String firstName;
	@NotEmpty
	@Size(min = 2, message = "lastname should have at least 2 characters")
	@Column(name = "last_name")
	private String lastName;

	@Column(name = "user_name")
	@NotEmpty
	@Size(min = 2, message = "firstname should have at least 2 characters")
	private String userName;

	@Column(name = "password")
    @NotEmpty
    @Size(min = 8, message = "password should be at least 8 characters")
	private String password;

	@Column(name = "pan_number")
	private String panNumber;

	@Column(name = "address")
	private String address;

	@Column(name = "phone_number")
	private long phoneNumber;

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

	public String getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(String panNumber) {
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

	public UserRegistration() {

	}

	public UserRegistration(long adhaarNumber, String firstName, String lastName, String userName, String password,
			String panNumber, String address, long phoneNumber) {
		super();
		this.adhaarNumber = adhaarNumber;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.panNumber = panNumber;
		this.address = address;
		this.phoneNumber = phoneNumber;
	}

}