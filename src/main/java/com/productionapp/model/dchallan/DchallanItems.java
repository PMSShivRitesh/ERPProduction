package com.productionapp.dchallan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DchallanItems")
public class DchallanItems {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="srno")
	private int srno;
	@Column(name="dchallanno")
	private int dchallanno;
	@Column(name="itemcode")
	private String itemcode;
	@Column(name="itemQty")
	private int itemQty;
	
	public int getSrno() {
		return srno;
	}
	public void setSrno(int srno) {
		this.srno = srno;
	}
	public int getDchallanno() {
		return dchallanno;
	}
	public void setDchallanno(int dchallanno) {
		this.dchallanno = dchallanno;
	}
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

}
