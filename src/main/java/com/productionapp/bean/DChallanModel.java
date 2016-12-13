package com.productionapp.bean;

import java.util.Date;

import javax.persistence.Column;



public class DChallanModel {

	private String dchallanno;
	private int custId;
	private String custName;
	private String dchallandate;
	private String dchallantype;
	private String pono;
	private String podate;
	private String dchallanstatus;
	private String itemcode;
	private int itemQty;
	public String getItemcode() {
		return itemcode;
	}
	public void setItemcode(String itemcode) {
		this.itemcode = itemcode;
	}
	public int getItemQty() {
		return itemQty;
	}
	public void setItemQty(int itemQty) {
		this.itemQty = itemQty;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	
	public String getDchallanno() {
		return dchallanno;
	}
	public void setDchallanno(String dchallanno) {
		this.dchallanno = dchallanno;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}

	public String getDchallandate() {
		return dchallandate;
	}
	public void setDchallandate(String dchallandate) {
		this.dchallandate = dchallandate;
	}
	public String getDchallantype() {
		return dchallantype;
	}
	public void setDchallantype(String dchallantype) {
		this.dchallantype = dchallantype;
	}
	public String getPono() {
		return pono;
	}
	public void setPono(String pono) {
		this.pono = pono;
	}
	
	public String getPodate() {
		return podate;
	}
	public void setPodate(String podate) {
		this.podate = podate;
	}
	public String getDchallanstatus() {
		return dchallanstatus;
	}
	public void setDchallanstatus(String dchallanstatus) {
		this.dchallanstatus = dchallanstatus;
	}
}
