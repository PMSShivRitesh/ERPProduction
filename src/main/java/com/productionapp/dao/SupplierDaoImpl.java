package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.SupplierDetail;

@Repository("supplierdao")
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(SupplierDaoImpl.class);
	
	public boolean saveSupplierDetail(SupplierDetail suppobj){
		loger.info("Save supplier Detail");
		sessionfactory.getCurrentSession().saveOrUpdate(suppobj);
		return false;
	}
	
	public int getSupplierId(String suppname){
		loger.info("Get Generated Supplier Id");
		return (Integer) sessionfactory.getCurrentSession().createCriteria(SupplierDetail.class).setProjection(Projections.property("suppId")).add(Restrictions.eq("suppName", suppname)).uniqueResult();
	}
	
	public boolean checkSuppNameExist(String suppname){
		boolean flag=false;
		loger.info("Check Supplier Name Exist");
		List <String>lst=sessionfactory.getCurrentSession().createCriteria(SupplierDetail.class).setProjection(Projections.property("suppName")).add(Restrictions.eq("suppName", suppname)).list();
		if(lst.size()>0){
			flag=true;
		}
		return flag;
		
	}
	
	public List<String> suppNameAutocompleter(String term){
		loger.info("supplier name autocompleter");
		return sessionfactory.getCurrentSession().createCriteria(SupplierDetail.class).setProjection(Projections.property("suppName")).add(Restrictions.like("suppName", "%"+term+"%")).list();
	}
	
	public SupplierDetail getsupplierdetail(int suppId){
		loger.info("Get Supplier Detail");
		return (SupplierDetail) sessionfactory.getCurrentSession().createCriteria(SupplierDetail.class).add(Restrictions.eq("suppId", suppId)).uniqueResult();
	}
	
	public boolean updateSupplierDetail(SupplierDetail suppobj){
		loger.info("update supplier detail"+ suppobj.getSuppId());
		sessionfactory.getCurrentSession().update(suppobj);
		return false;
	}
	
	public List getSuppList(){
		loger.info("Supplier List");
		return sessionfactory.getCurrentSession().createCriteria(SupplierDetail.class).list();
	}
}
