package com.productionapp.customer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="CustomerItems")
public class CustomerItems {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="custItemId")
	private int custItemId;
	@Column(name="custId")
	private int custId;
	@Column(name="itemCode")
	private String itemCode;
	@Column(name="itemRate")
	private String itemRate;
	
	@Transient
	private String custName;
	
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public int getCustItemId() {
		return custItemId;
	}
	public void setCustItemId(int custItemId) {
		this.custItemId = custItemId;
	}
	
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemRate() {
		return itemRate;
	}
	public void setItemRate(String itemRate) {
		this.itemRate = itemRate;
	}
	

}
