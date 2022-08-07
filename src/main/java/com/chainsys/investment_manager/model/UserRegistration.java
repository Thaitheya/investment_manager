package com.chainsys.investment_manager.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "user_registration")
public class UserRegistration {
	@Id
	@GeneratedValue
	@NotNull
	@Column(name = "adhaar_number")
	private long adhaarNumber;
	@NotEmpty
	@Size(min = 2, max = 50)
//	@Pattern(regexp = "[a-zA-Z]+\\.?",message = "Please enter the valid firstname")
	@Column(name = "first_name")
	private String firstName;
	@NotEmpty
	@Size(min = 2, max = 50)
//	@Pattern(regexp = "[a-zA-Z]+\\.?",message = "Please enter the valid lastname")
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "user_name")
	private String userName;
	@NotEmpty
//	@Pattern(regexp = "^[a-zA-Z0-9]{3}", message = "length must be 3")
	@Column(name = "password")
	private String password;
	@NotEmpty
//	@Pattern(regexp = "^[A-Z0-9A-Z]{10}", message = "length must be 10")
	@Column(name = "pan_number")
	private String  panNumber;
	@NotEmpty
	@Size(min = 20, max = 100 , message = "please enter the address")
	@Column(name = "address")
	private String address;
//	@Pattern(regexp = "^[0-9]+$", message = "Please enter 10 digit phone number")
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

}