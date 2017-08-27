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
		System.out.println("*****************************Test In Service**********************************************"+suppDocId);
		return dao.deletesuppDocuments(suppDocId);
	}

	public List<SupplierDocuments> getSuppDocumentsList(int suppId) {
		// TODO Auto-generated method stub
		
		return dao.getSuppDocumentsList(suppId);
	}

	public boolean checkDocementExist(int suppId, String docname) {
		// TODO Auto-generated method stub
		return dao.checkDocementExist(suppId, docname);
	}

}
