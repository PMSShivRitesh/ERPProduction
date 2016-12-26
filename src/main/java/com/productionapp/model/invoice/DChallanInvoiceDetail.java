package com.productionapp.model.invoice;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="DChallanInvoiceDetail")
public class DChallanInvoiceDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="invoiceNo")
	private int invoiceno;
	@Column(name="custId")
	private int custId;
	@Column(name="invoiceDate")
	private String invoiceDate;
	@Column(name="dchallanNo")
	private int dchallanNo;
	@Column(name="basicTotal")
	private String basicTotal;
	@Column(name="grandTotal")
	private String grandTotal;
	@Column(name="status")
	private String status;
	
	@Transient
	private String custName;
	
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(String grandTotal) {
		this.grandTotal = grandTotal;
	}
	public int getInvoiceno() {
		return invoiceno;
	}
	public void setInvoiceno(int invoiceno) {
		this.invoiceno = invoiceno;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(String invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public int getDchallanNo() {
		return dchallanNo;
	}
	public void setDchallanNo(int dchallanNo) {
		this.dchallanNo = dchallanNo;
	}
	public String getBasicTotal() {
		return basicTotal;
	}
	public void setBasicTotal(String basicTotal) {
		this.basicTotal = basicTotal;
	}
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
