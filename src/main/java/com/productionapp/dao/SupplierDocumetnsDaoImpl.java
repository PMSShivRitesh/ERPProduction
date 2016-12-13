package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.SupplierDocuments;

@Repository("supplierdocumentsdao")
public class SupplierDocumetnsDaoImpl implements SupplierDocumentsDao{
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(SupplierDocumetnsDaoImpl.class);
	public boolean addSuppDocuments(SupplierDocuments suppdoc){
		loger.info("Save supplier documents");
		sessionfactory.getCurrentSession().saveOrUpdate(suppdoc);
		return false;
	}
	
	public List getSuppDocumentsList(int suppId){
		loger.info("Get Supplier Documents List");
		return sessionfactory.getCurrentSession().createCriteria(SupplierDocuments.class).list();
	}
	
	public boolean deletesuppDocuments(int suppDocId){
		loger.info("Delete supplier documents");
		sessionfactory.getCurrentSession().createQuery("delete from SupplierDocuments where suppDocId='"+suppDocId+"'").executeUpdate();
		return false;
	}
	
	

}
