package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SupplierDocuments")
public class SupplierDocuments {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="suppDocId")
	private int suppDocId;
	@Column(name="suppId")
	private int suppId;
	@Column(name="docname")
	private String docname;
	@Column(name="docno")
	private String docno;
	@Column(name="wef")
	private String wef ;
	@Column(name="pvisible")
	private String pvisible;
	@Column(name="docloc")
	private String docloc;
	public int getSuppDocId() {
		return suppDocId;
	}
	public void setSuppDocId(int suppDocId) {
		this.suppDocId = suppDocId;
	}
	public int getSuppId() {
		return suppId;
	}
	public void setSuppId(int suppId) {
		this.suppId = suppId;
	}
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	public String getDocno() {
		return docno;
	}
	public void setDocno(String docno) {
		this.docno = docno;
	}
	public String getWef() {
		return wef;
	}
	public void setWef(String wef) {
		this.wef = wef;
	}
	public String getPvisible() {
		return pvisible;
	}
	public void setPvisible(String pvisible) {
		this.pvisible = pvisible;
	}
	public String getDocloc() {
		return docloc;
	}
	public void setDocloc(String docloc) {
		this.docloc = docloc;
	}
	

	
}
