package com.productionapp.model.invoice;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="InvoiceDetail")
public class InvoiceDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
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
	@Column(name="basicamt")
	private String basicamt;
	@Column(name="gstper")
	private String gstper;
	@Column(name="gstamt")
	private String gstamt;
	@Column(name="gtotal")
	private String gtotal;
	
	public String getBasicamt() {
		return basicamt;
	}
	public void setBasicamt(String basicamt) {
		this.basicamt = basicamt;
	}
	public String getGstper() {
		return gstper;
	}
	public void setGstper(String gstper) {
		this.gstper = gstper;
	}
	public String getGstamt() {
		return gstamt;
	}
	public void setGstamt(String gstamt) {
		this.gstamt = gstamt;
	}
	public String getGtotal() {
		return gtotal;
	}
	public void setGtotal(String gtotal) {
		this.gtotal = gtotal;
	}
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
