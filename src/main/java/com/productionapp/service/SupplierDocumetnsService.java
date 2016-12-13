package com.productionapp.service;

import java.util.List;

import com.productionapp.model.SupplierDocuments;

public interface SupplierDocumetnsService {
	public boolean addSuppDocuments(SupplierDocuments suppdoc);
	public boolean deletesuppDocuments(int suppDocId);
	public List getSuppDocumentsList(int suppId);

}
