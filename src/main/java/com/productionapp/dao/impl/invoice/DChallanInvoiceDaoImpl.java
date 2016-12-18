package com.productionapp.dao.impl.invoice;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.bean.DChallanInvoice;
import com.productionapp.dao.invoice.DChallanInvoiceDao;
import com.productionapp.model.customer.CustomerItems;
import com.productionapp.model.dchallan.DchallanItems;

@Repository("dchallaninvoicedaoimpl")
public class DChallanInvoiceDaoImpl implements DChallanInvoiceDao {
	private Logger loger=Logger.getLogger(DChallanInvoiceDaoImpl.class);
	@Autowired
	private SessionFactory sessionfactory;
	
	public List getInvoiceDchallanItems(int custid,int dchallanno){
		loger.info("Get Dchallan Items For invoicing " +dchallanno);
		List<DChallanInvoice>invoicelst=new ArrayList<DChallanInvoice>();
		List<DchallanItems>lst=sessionfactory.getCurrentSession().createCriteria(DchallanItems.class).add(Restrictions.eq("dchallanno", dchallanno)).list();
		//loger.info("ddfa gha  "+lst.size());
		Iterator itr=lst.iterator();
		while(itr.hasNext()){
			DChallanInvoice invoicemobj=new DChallanInvoice();
			DchallanItems dchallanmob=(DchallanItems)itr.next();
			invoicemobj.setItemCode(dchallanmob.getItemcode());
			invoicemobj.setQty(dchallanmob.getItemQty());
			String itemRate=(String) sessionfactory.getCurrentSession().createCriteria(CustomerItems.class).setProjection(Projections.property("itemRate")).add(Restrictions.eq("custId", custid)).uniqueResult();
			invoicemobj.setRate(itemRate);
			invoicemobj.setAmount(Float.toString(Float.parseFloat(itemRate)*(invoicemobj.getQty())));
			
			invoicelst.add(invoicemobj);
			
		}
		
		return invoicelst;
	}

}
