package com.jinal.learning.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "Client")
public class Client extends BaseModel implements Serializable {
	public static final String ROLE_ADMIN = "ADMIN";
	public static final String ROLE_CUSTOMER = "CUSTOMER";
	private boolean active;
	@Basic
	private String firstName;
	@Basic
	private String lastName;
	@Basic
	private String phoneNo;
	@Basic
	private String address;
	@Basic
	private String email;
	@Basic
	private String userRole;
	@Basic
	private String password;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Version
	private long version;

	@Basic
	private String userName;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getVersion() {
		return version;
	}

	public void setVersion(long version) {
		this.version = version;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getUserRole() {
		return userRole;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
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

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "[" + this.userName + "," + this.password + "," + this.userRole + "]";
	}

}
