package com.productionapp.model.Inventory;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Item")
public class Item {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="itemId")
	private int itemId;
	@Column(name="itemCode",unique=true)
	private String itemCode;
	@Column(name="itemCode1")
	private String itemCode1;
	@Column(name="itemCode2")
	private String itemCode2;
	@Column(name="itemCode3")
	private String itemCode3;
	@Column(name="itemName")
	private String itemName;
	@Column(name="itemDesc")
	private String itemDesc;
	@Column(name="minStock")
	private int minStock;
	@Column(name="maxStock")
	private int maxStock;
	@Column(name="inStock")
	private int inStock;
	@Column(name="itemLoc")
	private String itemLoc;
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemCode() {
		return itemCode;
	}
	public void setItemCode(String itemCode) {
		this.itemCode = itemCode;
	}
	public String getItemCode1() {
		return itemCode1;
	}
	public void setItemCode1(String itemCode1) {
		this.itemCode1 = itemCode1;
	}
	public String getItemCode2() {
		return itemCode2;
	}
	public void setItemCode2(String itemCode2) {
		this.itemCode2 = itemCode2;
	}
	public String getItemCode3() {
		return itemCode3;
	}
	public void setItemCode3(String itemCode3) {
		this.itemCode3 = itemCode3;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemDesc() {
		return itemDesc;
	}
	public void setItemDesc(String itemDesc) {
		this.itemDesc = itemDesc;
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
	public String getItemLoc() {
		return itemLoc;
	}
	public void setItemLoc(String itemLoc) {
		this.itemLoc = itemLoc;
	}
	
}
