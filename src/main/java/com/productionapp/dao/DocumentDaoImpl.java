package com.productionapp.dao;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Country;
import com.productionapp.model.Document;

@Repository("documentdao")
public class DocumentDaoImpl implements DocumentDao{
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(DocumentDaoImpl.class);
	public boolean saveDocument(Document docobj){
		loger.info("insert new document");
		sessionfactory.getCurrentSession().saveOrUpdate(docobj);
		return false;
	}
	
	public List<String>getDocumentList(){
		loger.info("Get Document List");
		return sessionfactory.getCurrentSession().createCriteria(Document.class).setProjection(Projections.property("DocumentName")).list();
	}

	

	public boolean deleteDoc(String docname){
		loger.info("delete document");
		sessionfactory.getCurrentSession().createQuery("delete from Document where DocumentName='"+docname+"'").executeUpdate();
		return false;
	}
	
	public Map<String,String> getDocumentsListForDropdown() {
        loger.info("get Document List For Dropdown popup");
		Map<String,String> doclst=new LinkedHashMap<String, String>();
		Session session=sessionfactory.openSession();
		Criteria criteria=session.createCriteria(Document.class);
		List<Country>list=criteria.list();
		Iterator itr=list.iterator();
		while(itr.hasNext())
		{
			Document obj=(Document)itr.next();
			doclst.put(Integer.toString(obj.getDocumentId()),obj.getDocumentName());
		}
	
		session.close();
		return doclst;
		
	}
}
