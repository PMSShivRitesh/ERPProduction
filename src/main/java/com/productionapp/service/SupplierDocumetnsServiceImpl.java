package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.SupplierDocumentsDao;
import com.productionapp.model.SupplierDocuments;
@Transactional
@Service("supplierdocuementsserviceimpl")
public class SupplierDocumetnsServiceImpl implements SupplierDocumetnsService{
	@Autowired
	SupplierDocumentsDao dao;

	public boolean addSuppDocuments(SupplierDocuments suppdoc) {
		// TODO Auto-generated method stub
		return dao.addSuppDocuments(suppdoc);
	}

	public boolean deletesuppDocuments(int suppDocId) {
		// TODO Auto-generated method stub
		return dao.deletesuppDocuments(suppDocId);
	}

	public List getSuppDocumentsList(int suppId) {
		// TODO Auto-generated method stub
		return dao.getSuppDocumentsList(suppId);
	}

}
