package com.productionapp.dao.impl.customer;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.customer.CustomerItemDao;
import com.productionapp.model.customer.CustomerDocuments;
import com.productionapp.model.customer.CustomerItems;


@Repository("custitemdaoimpl")
public class CustomerItemDaoImpl implements CustomerItemDao{
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(CustomerItemDaoImpl.class);
	public boolean allocateItem(CustomerItems custitem){
		sessionfactory.getCurrentSession().saveOrUpdate(custitem);
		return false;
	}
	
	public List getCustomerItems(int custId){
		loger.info("Get Customer Items");
		return sessionfactory.getCurrentSession().createCriteria(CustomerItems.class).add(Restrictions.eq("custId", custId)).list();
	}
	
	public List<String> getCustomerItemCode(int custId){
		loger.info("Get Customer Item Codes");
		return sessionfactory.getCurrentSession().createCriteria(CustomerItems.class).setProjection(Projections.property("itemCode")).add(Restrictions.eq("custId", custId)).list();
	}
	
	public String getCustItemRate(int custId,String itemCode){
		loger.info("Get Customer Item Rate");
		return (String) sessionfactory.getCurrentSession().createCriteria(CustomerItems.class).setProjection(Projections.property("itemRate")).add(Restrictions.eq("custId", custId)).uniqueResult();
	}
	
	public boolean checkcustitemexist(int custId, String itemCode){
		boolean flag=false;
		List<String>custitemlst=sessionfactory.getCurrentSession().createCriteria(CustomerItems.class).add(Restrictions.eq("custId", custId)).add(Restrictions.eq("itemCode", itemCode)).list();
		if(custitemlst.size()>0){
			flag=true;
		}
		
		
		return flag;
	}
	public boolean deleteCustomerItem(int custitemid){
		loger.info("Delete Customer Contact Pesrion");
		sessionfactory.getCurrentSession().createQuery("delete from CustomerItems where custItemId='"+custitemid+"'").executeUpdate();
		return false;
	}
	


}
