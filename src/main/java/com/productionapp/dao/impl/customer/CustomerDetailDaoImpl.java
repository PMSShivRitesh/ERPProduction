package com.productionapp.customer.daoimpl;

import java.util.Iterator;
import java.util.List;

import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.customer.dao.CustomerDetailDao;
import com.productionapp.customer.model.CustomerDetail;


@Repository("customerdetaildao")
public class CustomerDetailDaoImpl implements CustomerDetailDao {
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(CustomerDetailDaoImpl.class);
	public int getCustId(String custName){
	
		loger.info("Get Customer Id " +custName);
		return (Integer)sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).setProjection(Projections.property("custId")).add(Restrictions.eq("custName",custName)).uniqueResult();
		
			
	}
	
	public String getCustName(int custId){
		
		loger.info("Get Customer Name " );
		return (String)sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).setProjection(Projections.property("custName")).add(Restrictions.eq("custId",custId)).uniqueResult();
		
			
	}
	
	public boolean saveCustomerDetail(CustomerDetail mobj){
		loger.info("Saving customer detail");
		sessionfactory.getCurrentSession().saveOrUpdate(mobj);
		return false;
	}
	
	public boolean updateCustomerDetail(CustomerDetail mobj){
		loger.info("Update customer detail");
		sessionfactory.getCurrentSession().update(mobj);
		return true;
	}
	
	public List<CustomerDetail> getCustList(){
		loger.info("Get Existing Customer List");
		return  sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).list();
	
	}
	
	public boolean checCustomerExist(String custname){
		loger.info("Check Customer exist or not");
		boolean flag=false;
		List lst=sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).add(Restrictions.eq("custName", custname)).list();
		
		if(lst.size()>0)
		{
			flag=true;
		}
		return flag;
	}
	
	

	public List<String> getCustNameAutocompleter(String custname) {
		 loger.info("Customer Name Autompleter");
		return sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).setProjection(Projections.property("custName")).add(Restrictions.like("custName", "%"+custname+"%")).list();  
	}
	
	public CustomerDetail getCustomerDetail(int custid){
		loger.info("Get Customer Detail");
		return (CustomerDetail) sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).add(Restrictions.eq("custId", custid)).uniqueResult();
		
	}
	
	public List getApplyeTaxOfCustomer(int custID){
		loger.info("Get Taxes apply for customer");
		return sessionfactory.getCurrentSession().createCriteria(CustomerDetail.class).add(Restrictions.eq("custId", custID)).list();
	}
	

	

}
