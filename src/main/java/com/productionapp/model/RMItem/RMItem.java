package com.productionapp.model.RMItem;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="RMItemDetail")
public class RMItem {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="rmitemId")
	private int rmitemId;
	@Column(name="rmitemcode")
	private String rmitemcode;
	@Column(name="rmitemname")
	private String rmitemname;
	@Column(name="rmitemdesc")
	private String rmitemdesc;
	@Column(name="minStock")
	private int minStock;
	@Column(name="maxStock")
	private int maxStock;
	@Column(name="inStock")
	private int inStock;
	@Column(name="rmitemLoc")
	private String rmitemLoc;
	public int getRmitemId() {
		return rmitemId;
	}
	public void setRmitemId(int rmitemId) {
		this.rmitemId = rmitemId;
	}
	public String getRmitemcode() {
		return rmitemcode;
	}
	public void setRmitemcode(String rmitemcode) {
		this.rmitemcode = rmitemcode;
	}
	public String getRmitemname() {
		return rmitemname;
	}
	public void setRmitemname(String rmitemname) {
		this.rmitemname = rmitemname;
	}
	public String getRmitemdesc() {
		return rmitemdesc;
	}
	public void setRmitemdesc(String rmitemdesc) {
		this.rmitemdesc = rmitemdesc;
	}
	public int getMinStock() {
		return minStock;
	}
	public void setMinStock(int minStock) {
		this.minStock = minStock;
	}
	public int getMaxStock() {
		return maxStock;
	}
	public void setMaxStock(int maxStock) {
		this.maxStock = maxStock;
	}
	public int getInStock() {
		return inStock;
	}
	public void setInStock(int inStock) {
		this.inStock = inStock;
	}
	public String getRmitemLoc() {
		return rmitemLoc;
	}
	public void setRmitemLoc(String rmitemLoc) {
		this.rmitemLoc = rmitemLoc;
	}
	
	
}
