package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="documenttable")
public class Document {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Documentid")
	private int DocumentId;
	@Column(name="DocumentName",unique=true)
	private String DocumentName;
	public int getDocumentId() {
		return DocumentId;
	}
	public void setDocumentId(int documentId) {
		DocumentId = documentId;
	}
	public String getDocumentName() {
		return DocumentName;
	}
	public void setDocumentName(String documentName) {
		DocumentName = documentName;
	}

}
