package com.productionapp.customer.model;

import java.io.File;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="CustomerDocuments")
public class CustomerDocuments {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="custDocId")
	private int custDocId;
	@Column(name="custId")
	private int custId;
	@Column(name="docname")
	private String docname;
	@Column(name="docno")
	private String docno;
	@Column(name="wef")
	private String wef;
	@Column(name="pvisible")
	private String pvisible;
	@Column(name="docloc")
	private String docloc;
	@Transient
	private MultipartFile file;
	
	public int getCustDocId() {
		return custDocId;
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public void setCustDocId(int custDocId) {
		this.custDocId = custDocId;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
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
