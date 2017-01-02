package com.productionapp.model.invoice;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="InvoiceDetail")
public class InvoiceDetail {
	@Id
	@GeneratedValue
	@Column(name="invoiceno")
	private int invoiceno;
	@Column(name="invoicedate")
	private String invoicedate;
	@Column(name="createddate")
	private Date createddate=new Date();
	@Column(name="pono")
	private String pono;
	@Column(name="custId")
	private int custId;
	@Column(name="podate")
	private String podate;
	@Column(name="status")
	private String status;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getInvoiceno() {
		return invoiceno;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public void setInvoiceno(int invoiceno) {
		this.invoiceno = invoiceno;
	}
	public String getInvoicedate() {
		return invoicedate;
	}
	public void setInvoicedate(String invoicedate) {
		this.invoicedate = invoicedate;
	}
	public Date getCreateddate() {
		return createddate;
	}
	public void setCreateddate(Date createddate) {
		this.createddate = createddate;
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
	
	
	

}
