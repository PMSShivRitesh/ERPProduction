package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SupplierConatactPersions")
public class SupplierConatactPersions {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="suppConatactId")
	private int suppConatactId;
	@Column(name="suppId")
	private int suppId;
	@Column(name="contactPersionName")
	private String contactPersionName ;
	@Column(name="designation")
	private String designation ;
	@Column(name="phoneno")
	private String phoneno ;
	@Column(name="email")
	private String email;
	public int getSuppConatactId() {
		return suppConatactId;
	}
	public void setSuppConatactId(int suppConatactId) {
		this.suppConatactId = suppConatactId;
	}
	public int getSuppId() {
		return suppId;
	}
	public void setSuppId(int suppId) {
		this.suppId = suppId;
	}
	public String getContactPersionName() {
		return contactPersionName;
	}
	public void setContactPersionName(String contactPersionName) {
		this.contactPersionName = contactPersionName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


}
