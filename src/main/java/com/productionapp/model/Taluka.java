package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="talukatable")
public class Taluka {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="talukaId")
	private int talukaId;
	
	@Column(name="districtId")
	private int districtId;
	
	@Column(name="talukaName")
	private String talukaName;
	
	public int getTalukaId() {
		return talukaId;
	}
	public void setTalukaId(int talukaId) {
		this.talukaId = talukaId;
	}
	public int getDistrictId() {
		return districtId;
	}
	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}
	public String getTalukaName() {
		return talukaName;
	}
	public void setTalukaName(String talukaName) {
		this.talukaName = talukaName;
	}
	
	
	
}
