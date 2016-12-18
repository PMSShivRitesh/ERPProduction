package com.productionapp.sales.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SalesOrderItems")
public class SalesOrderItems {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="srno")
	private int srno;
	@Column(name="saleorderno")
	private int saleorderno;
	@Column(name="itemCode")
	private String itemCode;
	
	@Column(name="qty")
	private int qty;
	@Column(name="unit")
	private String unit;
	@Column(name="rate")
	private String rate;
	@Column(name="amt")
	private int amt;
	@Column(name="dilDate")
	private String dilDate;
	public int getSrno() {
		return srno;
	}
	public void setSrno(int srno) {
		this.srno = srno;
	}
	public int getSaleorderno() {
		return saleorderno;
	}
	public void setSaleorderno(int saleorderno) {
		this.saleorderno = saleorderno;
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
	

}
