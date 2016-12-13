package com.productionapp.customer.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CustmerContactPersions")
public class CustomerContactPersions {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="contactPesrsionId")
	private int contactPesrsionId;
	
	@Column(name="custId")
	private int custId;
	
	@Column(name="cpersionname")
	private String cpersionname;
	@Column(name="cpdesignation")
	private String cpdesignation;
	@Column(name="cpphno")
	private String cpphno;
	@Column(name="cpmail")
	private String cpmail;
	
	public int getContactPesrsionId() {
		return contactPesrsionId;
	}
	public void setContactPesrsionId(int contactPesrsionId) {
		this.contactPesrsionId = contactPesrsionId;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCpersionname() {
		return cpersionname;
	}
	public void setCpersionname(String cpersionname) {
		this.cpersionname = cpersionname;
	}
	public String getCpdesignation() {
		return cpdesignation;
	}
	public void setCpdesignation(String cpdesignation) {
		this.cpdesignation = cpdesignation;
	}
	public String getCpphno() {
		return cpphno;
	}
	public void setCpphno(String cpphno) {
		this.cpphno = cpphno;
	}
	public String getCpmail() {
		return cpmail;
	}
	public void setCpmail(String cpmail) {
		this.cpmail = cpmail;
	}

}
