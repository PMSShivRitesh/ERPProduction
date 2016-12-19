package com.productionapp.model.invoice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DChallanInvoiceItemDetail")
public class DChallanInvoiceItemDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="srno")
	private int srno;
	@Column(name="invoiceNo")
	private int invoiceno;
	
	@Column(name="itemCode")
	private String itemCode;
	@Column(name="qty")
	private int qty;
	@Column(name="rate")
	private String rate;
	@Column(name="amount")
	private String amount;
	
	
	public int getInvoiceno() {
		return invoiceno;
	}
	public void setInvoiceno(int invoiceno) {
		this.invoiceno = invoiceno;
	}
	public int getSrno() {
		return srno;
	}
	public void setSrno(int srno) {
		this.srno = srno;
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
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	

}
