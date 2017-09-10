package com.productionapp.model.RM;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BasicRmDetail")
public class BasicRM {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="brmId")
	private int brmId;
	@Column(name="brmName")
	private String brmName;
	public int getBrmId() {
		return brmId;
	}
	public void setBrmId(int brmId) {
		this.brmId = brmId;
	}
	public String getBrmName() {
		return brmName;
	}
	public void setBrmName(String brmName) {
		this.brmName = brmName;
	}
	

}
