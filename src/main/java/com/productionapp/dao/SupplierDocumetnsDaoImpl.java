package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.SupplierDocuments;
import com.productionapp.model.customer.CustomerDocuments;

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
	
	public List<SupplierDocuments> getSuppDocumentsList(int suppId){
		loger.info("Get Supplier Documents List");
		return sessionfactory.getCurrentSession().createCriteria(SupplierDocuments.class).list();
	}
	
	public boolean deletesuppDocuments(int suppDocId){
		loger.info("Delete supplier documents");
		System.out.println("*****************************Test In Dao**********************************************"+suppDocId);
		sessionfactory.getCurrentSession().createQuery("delete from SupplierDocuments where suppDocId='"+suppDocId+"'").executeUpdate();
		return false;
	}

	public boolean checkDocementExist(int suppId, String docname) {
		boolean flag=false;
		List<String>suppdoclst=sessionfactory.getCurrentSession().createCriteria(SupplierDocuments.class).setProjection(Projections.property("docname")).add(Restrictions.eq("docname", docname)).add(Restrictions.eq("suppId", suppId)).list();
		if(suppdoclst.size()>0){
			flag=true;
		}
		return flag;
		
	}
	
	

}
