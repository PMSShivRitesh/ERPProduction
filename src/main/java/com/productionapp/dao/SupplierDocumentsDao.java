package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.SupplierDocuments;

public interface SupplierDocumentsDao {
	public boolean addSuppDocuments(SupplierDocuments suppdoc);
	public boolean deletesuppDocuments(int suppDocId);
	public List getSuppDocumentsList(int suppId);

}
