package com.productionapp.model.sales;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="SalesOrderDetail")
public class SalesOrderDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="saleorderno")
	private int saleorderno;
	@Column(name="custId")
	private int custId;
	@Column(name="poNo")
	private String	poNo;
	//@Temporal(TemporalType.DATE)
	@Column(name="poDate")
	private String	poDate;
    @Column(name="bTotal")
	private String bTotal;
    @Column(name="exciseAmt")
	private String exciseAmt;
    @Column(name="vatAmt")
	private String vatAmt;
    @Column(name="cstAmt")
	private String cstAmt;
    @Column(name="serviceTaxAmt")
	private String serviceTaxAmt;
    @Column(name="netAmt")
	private String netAmt;
    @Column(name="status")
    private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getSaleorderno() {
		return saleorderno;
	}
	public void setSaleorderno(int saleorderno) {
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
	
	public String toString() 
    {
        return this.saleorderno + "," + this.poNo + "," + this.poDate + "," 
		    + this.bTotal + "," + this.exciseAmt;
    }

}
