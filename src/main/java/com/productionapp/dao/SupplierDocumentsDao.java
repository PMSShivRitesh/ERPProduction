package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.SupplierDocuments;

public interface SupplierDocumentsDao {
	public boolean addSuppDocuments(SupplierDocuments suppdoc);
	public boolean deletesuppDocuments(int suppDocId);
	public List<SupplierDocuments> getSuppDocumentsList(int suppId);
	public boolean checkDocementExist(int suppId,String docname);
}
