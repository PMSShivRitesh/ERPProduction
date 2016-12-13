package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.SupplierConatactPersions;
import com.productionapp.model.SupplierDetail;

@Repository("supplierconatacts")
public class SupplierContactsDaoImpl implements SupplierContactsDao {
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(SupplierContactsDaoImpl.class);
	public boolean saveContacts(SupplierConatactPersions suppconatacts){
		loger.info("Save supplier contacts persiosn");
		sessionfactory.getCurrentSession().saveOrUpdate(suppconatacts);
		return false;
	}
	
	public List getSuppConatacts(int suppid){
		loger.info("get supplier contacts");
		return sessionfactory.getCurrentSession().createCriteria(SupplierConatactPersions.class).add(Restrictions.eq("suppId", suppid)).list();
	}
	
	public boolean checksuppnameexist(int suppid,String suppcontactname){
		boolean flag=false;
		loger.info("Check supplier Contact name Already exist or not");
		List<String> lst=sessionfactory.getCurrentSession().createCriteria(SupplierConatactPersions.class).setProjection(Projections.property("contactPersionName")).add(Restrictions.eq("suppId", suppid)).add(Restrictions.eq("contactPersionName", suppcontactname)).list();
		if(lst.size()>0){
			flag=true;
		}
		return flag;
	}
	
	public boolean deleteSuppContact(int suppConatactId){
		loger.info("Delete supplier contact persion");
		sessionfactory.getCurrentSession().createQuery("delete from SupplierConatactPersions where suppConatactId='"+suppConatactId+"'").executeUpdate();
		return false;
	}
	
	

}
