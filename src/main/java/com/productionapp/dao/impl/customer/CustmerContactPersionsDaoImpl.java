package com.productionapp.customer.daoimpl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.productionapp.customer.dao.CustmerContactPersionsDao;
import com.productionapp.customer.model.CustomerContactPersions;


@Repository("customercontactpersionsdaoimpl")
public class CustmerContactPersionsDaoImpl implements CustmerContactPersionsDao {
	@Autowired
	SessionFactory sessionfactory;
	private Logger logger=Logger.getLogger(CustomerDetailDaoImpl.class);
	public void saveCustomerContactPersions(CustomerContactPersions custcontactmodel){
		logger.info("Save customer contact persions");
		sessionfactory.getCurrentSession().saveOrUpdate(custcontactmodel);
	}
	
	public List<CustomerContactPersions>getCustomerContactPersionList(int custid){
		logger.info("Get Customer ContacatPesrion List");
		return sessionfactory.getCurrentSession().createCriteria(CustomerContactPersions.class).add(Restrictions.eq("custId",custid)).list();
	}
	
	public boolean deleteCustomerContactPersion(int contactPesrsionId){
		logger.info("Delete Customer Contact Pesrion");
		sessionfactory.getCurrentSession().createQuery("delete from CustomerContactPersions where contactPesrsionId='"+contactPesrsionId+"'").executeUpdate();
		return false;
	}
	public boolean checkContactPersionExist(int custId,String cpersionname){
		logger.info("Check customer contact persion exist");
		boolean flag=false;
		List<String>cplst=sessionfactory.getCurrentSession().createCriteria(CustomerContactPersions.class).setProjection(Projections.property("cpersionname")).add(Restrictions.eq("cpersionname", cpersionname)).add(Restrictions.eq("custId", custId)).list();
		if(cplst.size()>0){
			flag=true;
		}
		return flag;
	}

}
