package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="supplierdetail")
public class SupplierDetail {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="suppId")
	private int suppId;

	@Column(name="suppName",unique=true)
	private String	suppName;
	@Column(name="suppShortCutName")
	private String	suppShortCutName;

	@Column(name="suppAddress")
	private String suppAddress ;

	@Column(name="countryName")
	private String countryName;

	@Column(name="stateName")
	private String stateName ;

	@Column(name="districtName")
	private String districtName;
	@Column(name="talukaName")
	private String talukaName;
	@Column(name="suppZipCode")
	private String suppZipCode ;
	@Column(name="suppWebsite")
	private String suppWebsite ;

	@Column(name="suppEmail")
	private String suppEmail ;

	@Column(name="suppConatactNo")
	private String suppConatactNo;

	@Column(name="suppGst")
	private String suppGst ;

	@Column(name="suppCst")
	private String suppCst ;

	@Column(name="suppVat")
	private String suppVat ;

	@Column(name="suppExcise")
	private String suppExcise ;

	@Column(name="suppServiceTax")
	private String suppServiceTax;
	@Column(name="suppStatus")
	private String suppStatus;
	public int getSuppId() {
		return suppId;
	}
	public void setSuppId(int suppId) {
		this.suppId = suppId;
	}
	public String getSuppName() {
		return suppName;
	}
	public void setSuppName(String suppName) {
		this.suppName = suppName;
	}
	public String getSuppShortCutName() {
		return suppShortCutName;
	}
	public void setSuppShortCutName(String suppShortCutName) {
		this.suppShortCutName = suppShortCutName;
	}
	public String getSuppAddress() {
		return suppAddress;
	}
	public void setSuppAddress(String suppAddress) {
		this.suppAddress = suppAddress;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	public String getTalukaName() {
		return talukaName;
	}
	public void setTalukaName(String talukaName) {
		this.talukaName = talukaName;
	}
	public String getSuppZipCode() {
		return suppZipCode;
	}
	public void setSuppZipCode(String suppZipCode) {
		this.suppZipCode = suppZipCode;
	}
	public String getSuppWebsite() {
		return suppWebsite;
	}
	public void setSuppWebsite(String suppWebsite) {
		this.suppWebsite = suppWebsite;
	}
	public String getSuppEmail() {
		return suppEmail;
	}
	public void setSuppEmail(String suppEmail) {
		this.suppEmail = suppEmail;
	}
	public String getSuppConatactNo() {
		return suppConatactNo;
	}
	public void setSuppConatactNo(String suppConatactNo) {
		this.suppConatactNo = suppConatactNo;
	}
	public String getSuppGst() {
		return suppGst;
	}
	public void setSuppGst(String suppGst) {
		this.suppGst = suppGst;
	}
	public String getSuppCst() {
		return suppCst;
	}
	public void setSuppCst(String suppCst) {
		this.suppCst = suppCst;
	}
	public String getSuppVat() {
		return suppVat;
	}
	public void setSuppVat(String suppVat) {
		this.suppVat = suppVat;
	}
	public String getSuppExcise() {
		return suppExcise;
	}
	public void setSuppExcise(String suppExcise) {
		this.suppExcise = suppExcise;
	}
	public String getSuppServiceTax() {
		return suppServiceTax;
	}
	public void setSuppServiceTax(String suppServiceTax) {
		this.suppServiceTax = suppServiceTax;
	}
	public String getSuppStatus() {
		return suppStatus;
	}
	public void setSuppStatus(String suppStatus) {
		this.suppStatus = suppStatus;
	}
	
	
}

