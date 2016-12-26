package com.productionapp.dao.impl.invoice;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
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
		dchallaninvoicedetail.setStatus("Created");
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
	
	public List getInvoiceDetailLst(){
		loger.info("Invoice Detail List");
		return sessionfactory.getCurrentSession().createCriteria(DChallanInvoiceDetail.class).list();
	}
	
	public List getInvoiceNolst(int custId,String status){
		loger.info("Get Invoice No List");
		return sessionfactory.getCurrentSession().createCriteria(DChallanInvoiceDetail.class).setProjection(Projections.property("invoiceno")).add(Restrictions.eq("status", status)).add(Restrictions.eq("custId", custId)).list();
	}
	
	public String getBillAmount(int invoiceno){
		loger.info("Get Bill Amount");
		return (String) sessionfactory.getCurrentSession().createCriteria(DChallanInvoiceDetail.class).setProjection(Projections.property("grandTotal")).add(Restrictions.eq("invoiceno", invoiceno)).uniqueResult();
	}
	
	public boolean updateDchallanInvoiceStatus(int invoiceno,String status){
		loger.info("Update D.challan Invoice");
		Session session=sessionfactory.openSession();
		Query query = session.createQuery("update DChallanInvoiceDetail set status =?" +
				" where invoiceno =?");
				query.setParameter(0, status);
				query.setParameter(1, invoiceno);
					int result = query.executeUpdate();
		return false;
	}
	
	public List getCustInvoiceDetailLst(int custId){
		loger.info("get Customer Invoice List");
		return sessionfactory.getCurrentSession().createCriteria(DChallanInvoiceDetail.class).add(Restrictions.eq("custId", custId)).list();
	}

}
