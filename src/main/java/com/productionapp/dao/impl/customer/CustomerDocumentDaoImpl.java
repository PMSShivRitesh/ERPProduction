package com.productionapp.customer.daoimpl;

import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.pattern.LogEvent;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.customer.dao.CustomerDocumentDao;
import com.productionapp.customer.model.CustomerDocuments;


@Repository("customerdocumentdao")
public class CustomerDocumentDaoImpl implements CustomerDocumentDao {
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(CustomerDocumentDaoImpl.class);
	
	public boolean saveCustomerDocumentsDetail(CustomerDocuments custdocmodel){
		loger.info("Save Customer Document Details");
		sessionfactory.getCurrentSession().saveOrUpdate(custdocmodel);
		return false;
	}
	
	public List<CustomerDocuments>getCustomerDocDetail(int custid){
		loger.info("Get Customer Document Details");
		return sessionfactory.getCurrentSession().createCriteria(CustomerDocuments.class).add(Restrictions.eq("custId", custid)).list();
		
	}
	
	public boolean deleteCustomerDocuments(int docid)
	{
		loger.info("Delete customer documents");
		sessionfactory.getCurrentSession().createQuery("delete from CustomerDocuments where custDocId='"+docid+"'");
		return false;
	}
	
	public boolean checkDocementExist(int custid,String docname){
		boolean flag=false;
		List<String>custdoclst=sessionfactory.getCurrentSession().createCriteria(CustomerDocuments.class).setProjection(Projections.property("docname")).add(Restrictions.eq("docname", docname)).add(Restrictions.eq("custId", custid)).list();
		if(custdoclst.size()>0){
			flag=true;
		}
		return flag;
	}
}
