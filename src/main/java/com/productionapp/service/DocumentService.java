package com.productionapp.service;

import java.util.List;
import java.util.Map;

import com.productionapp.model.Document;

public interface DocumentService {
	public boolean saveDocument(Document docobj);
	public List<String>getDocumentList();
	public boolean deleteDoc(String docname);
	public Map<String,String> getDocumentsListForDropdown();

}
