package com.productionapp.model.account;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;


@Entity
@Table(name="custPayment")
public class CustPayment {
	@Id
	@GeneratedValue
	@Column(name="paymentId")
	private int paymentId;
	@Column(name="custId")
	private int custId;
	
	@Column(name="paymentDate")
	private Date paymentDate=new Date();
	@Column(name="InvoiceNo")
	private int invoiceno;
	
	@Column(name="credit")
	private String credit;
	@Column(name="payMode")
	private String payMode;
	@Transient
	private String custName;
	@Transient
	private String balance;
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public int getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public int getInvoiceno() {
		return invoiceno;
	}
	public void setInvoiceno(int invoiceno) {
		this.invoiceno = invoiceno;
	}
	
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getPayMode() {
		return payMode;
	}
	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}
	
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
	
}
