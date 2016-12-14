package com.productionapp.bean;



public class SalesOrderModel {
	
	private String saleorderno;
	private int custId;
	private String custName;
	
	private String	poNo;
	private String	poDate;
	private String bTotal;
	private String exciseAmt;
	private String vatAmt;
	private String cstAmt;
	private String serviceTaxAmt;
	private String itemCode;
	private int qty;
	private String unit;
	private String rate;
	private int amt;
	private String dilDate;
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public int getAmt() {
		return amt;
	}
	public void setAmt(int amt) {
		this.amt = amt;
	}
	public String getDilDate() {
		return dilDate;
	}
	public void setDilDate(String dilDate) {
		this.dilDate = dilDate;
	}

	
	public String getSaleorderno() {
		return saleorderno;
	}
	public void setSaleorderno(String saleorderno) {
		this.saleorderno = saleorderno;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getPoNo() {
		return poNo;
	}
	public void setPoNo(String poNo) {
		this.poNo = poNo;
	}
	public String getPoDate() {
		return poDate;
	}
	public void setPoDate(String poDate) {
		this.poDate = poDate;
	}
	public String getbTotal() {
		return bTotal;
	}
	public void setbTotal(String bTotal) {
		this.bTotal = bTotal;
	}
	public String getExciseAmt() {
		return exciseAmt;
	}
	public void setExciseAmt(String exciseAmt) {
		this.exciseAmt = exciseAmt;
	}
	public String getVatAmt() {
		return vatAmt;
	}
	public void setVatAmt(String vatAmt) {
		this.vatAmt = vatAmt;
	}
	public String getCstAmt() {
		return cstAmt;
	}
	public void setCstAmt(String cstAmt) {
		this.cstAmt = cstAmt;
	}
	public String getServiceTaxAmt() {
		return serviceTaxAmt;
	}
	public void setServiceTaxAmt(String serviceTaxAmt) {
		this.serviceTaxAmt = serviceTaxAmt;
	}
	public String getNetAmt() {
		return netAmt;
	}
	public void setNetAmt(String netAmt) {
		this.netAmt = netAmt;
	}
	private String netAmt;

}
