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

import com.productionapp.dao.invoice.DChallanInvoiceDao;
import com.productionapp.model.customer.CustomerItems;
import com.productionapp.model.dchallan.DchallanItems;
import com.productionapp.model.invoice.DChallanInvoiceDetail;
import com.productionapp.model.invoice.DChallanInvoiceItemDetail;

@Repository("dchallaninvoicedaoimpl")
public class DChallanInvoiceDaoImpl implements DChallanInvoiceDao {
	private Logger loger=Logger.getLogger(DChallanInvoiceDaoImpl.class);
	@Autowired
	private SessionFactory sessionfactory;
	
	public List getInvoiceDchallanItems(int custid,int dchallanno){
		loger.info("Get Dchallan Items For invoicing " +dchallanno);
		List<DChallanInvoiceItemDetail>invoicelst=new ArrayList<DChallanInvoiceItemDetail>();
		List<DchallanItems>lst=sessionfactory.getCurrentSession().createCriteria(DchallanItems.class).add(Restrictions.eq("dchallanno", dchallanno)).list();
		//loger.info("ddfa gha  "+lst.size());
		Iterator itr=lst.iterator();
		while(itr.hasNext()){
			DChallanInvoiceItemDetail invoicemobj=new DChallanInvoiceItemDetail();
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
	
	public int createDchallanInvoice(DChallanInvoiceDetail dchallaninvoicedetail){
		loger.info("Create Dchallan Invoice");
		sessionfactory.getCurrentSession().save(dchallaninvoicedetail);
		int invoiceno=dchallaninvoicedetail.getInvoiceno();
		List<DChallanInvoiceItemDetail>invoicelst=getInvoiceDchallanItems(dchallaninvoicedetail.getCustId(),dchallaninvoicedetail.getDchallanNo());
		Iterator itr=invoicelst.iterator();
		while(itr.hasNext()){
			DChallanInvoiceItemDetail obj=new DChallanInvoiceItemDetail();
			DChallanInvoiceItemDetail obj1=(DChallanInvoiceItemDetail)itr.next();
			obj.setItemCode(obj1.getItemCode());
			obj.setQty(obj1.getQty());
			obj.setRate(obj1.getRate());
			obj.setAmount(obj1.getAmount());
			obj.setInvoiceno(invoiceno);
			sessionfactory.getCurrentSession().save(obj);
			
		}
		return invoiceno;
		
	}

}
