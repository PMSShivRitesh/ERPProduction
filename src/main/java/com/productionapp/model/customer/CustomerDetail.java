package com.productionapp.model.customer;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Primary;

@Entity
@Table(name="customerdetail")
public class CustomerDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="custId")
	private int custId;
	
	@Column(name="custName",unique=true)
	private String custName;
	@Column(name="custshortcutname")
	private String custshortcutname;
	@Column(name="custAddress")
	private String custAddress;
	@Column(name="custCountry")
	private int custCountry;
	@Column(name="custstate")
	private int custstate;
	@Column(name="custdistrict")
	private int custdistrict;
	@Column(name="custtaluka")
	private int custtaluka;
	@Column(name="custZipCode")
	private String custZipCode;
	@Column(name="custwebsite")
	private String custwebsite;
	@Column(name="custemail")
	private String custemail;
	@Column(name="custcontactno")
	private String custcontactno;
	@Column(name="mobilenumber")
	private String mobilenumber;
	@Column(name="whatappmobile")
	private String whatappmobile;
	
	@Column(name="custgst")
	private String custgst;
	
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustshortcutname() {
		return custshortcutname;
	}
	public void setCustshortcutname(String custshortcutname) {
		this.custshortcutname = custshortcutname;
	}
	public String getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(String custAddress) {
		this.custAddress = custAddress;
	}
	public int getCustCountry() {
		return custCountry;
	}
	public void setCustCountry(int custCountry) {
		this.custCountry = custCountry;
	}
	public int getCuststate() {
		return custstate;
	}
	public void setCuststate(int custstate) {
		this.custstate = custstate;
	}
	public int getCustdistrict() {
		return custdistrict;
	}
	public void setCustdistrict(int custdistrict) {
		this.custdistrict = custdistrict;
	}
	public int getCusttaluka() {
		return custtaluka;
	}
	public void setCusttaluka(int custtaluka) {
		this.custtaluka = custtaluka;
	}
	public String getCustZipCode() {
		return custZipCode;
	}
	public void setCustZipCode(String custZipCode) {
		this.custZipCode = custZipCode;
	}
	public String getCustwebsite() {
		return custwebsite;
	}
	public void setCustwebsite(String custwebsite) {
		this.custwebsite = custwebsite;
	}
	public String getCustemail() {
		return custemail;
	}
	public void setCustemail(String custemail) {
		this.custemail = custemail;
	}
	public String getCustcontactno() {
		return custcontactno;
	}
	public void setCustcontactno(String custcontactno) {
		this.custcontactno = custcontactno;
	}
	public String getCustgst() {
		return custgst;
	}
	public void setCustgst(String custgst) {
		this.custgst = custgst;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getWhatappmobile() {
		return whatappmobile;
	}
	public void setWhatappmobile(String whatappmobile) {
		this.whatappmobile = whatappmobile;
	}
	
	

}
