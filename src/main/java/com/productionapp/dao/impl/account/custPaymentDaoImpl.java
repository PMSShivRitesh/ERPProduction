package com.productionapp.dao.impl.account;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.account.custPaymentDao;
import com.productionapp.model.account.CustPayment;

@Repository("custPaymentDaoImpl")
public class custPaymentDaoImpl implements custPaymentDao {
	private Logger loger=Logger.getLogger(custPaymentDaoImpl.class);
	@Autowired
	private SessionFactory sessionfactory;
	public boolean saveCustomerPayment(CustPayment mobj){
		loger.info("Save customer payment");
		sessionfactory.getCurrentSession().save(mobj);
		return false;
	}
	
	public String getCustBillCrediAmt(int billno){
		loger.info("Get Credited Bill Amount");
		return (String) sessionfactory.getCurrentSession().createCriteria(CustPayment.class).setProjection(Projections.sum("credit")).add(Restrictions.eqOrIsNull("invoiceno", billno)).uniqueResult();
	}
	
	public List getCustCreditDetailLst(int custId){
		return sessionfactory.getCurrentSession().createCriteria(CustPayment.class).add(Restrictions.eq("custId", custId)).list();
	}

}
