package com.productionapp.dao.impl.invoice;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.bean.DChallanModel;
import com.productionapp.bean.InvoiceModel;
import com.productionapp.dao.invoice.InvoiceDao;
import com.productionapp.model.dchallan.DchallanDetail;
import com.productionapp.model.dchallan.DchallanItems;
import com.productionapp.model.invoice.InvoiceDetail;
import com.productionapp.model.invoice.InvoiceItemDetail;

@Repository("InvoiceDaoImpl")
public class InvoiceDaoImpl implements InvoiceDao {
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(InvoiceDaoImpl.class);
	public int createInvoice(InvoiceModel invoicemodel){
		loger.info("Create Invoice");
		InvoiceDetail invoicedetail=new InvoiceDetail();
		invoicedetail.setCustId(invoicemodel.getCustId());
		invoicedetail.setInvoicedate(invoicemodel.getInvoicedate());
	
		List<Integer>lst=getInvoiceno(invoicemodel.getCustId(), invoicemodel.getInvoicedate());
		 if(lst.size()>0){
			 Iterator lstitr=lst.iterator();
			 if(lstitr.hasNext()){
				 invoicedetail.setInvoiceno(Integer.parseInt(lstitr.next().toString()));
				
			 }
		 }
		 else{
				invoicedetail.setPono(invoicemodel.getPono());
				invoicedetail.setPodate(invoicemodel.getPodate());
				invoicedetail.setStatus("Pending");
				sessionfactory.getCurrentSession().saveOrUpdate(invoicedetail);
		
		 }
		return invoicedetail.getInvoiceno();
	}
	
	
	public void saveInvoiceItems(InvoiceModel invoicemodel){
		loger.info("Save Invoice Items" );
		InvoiceItemDetail invoiceitemdetail=new InvoiceItemDetail();
		invoiceitemdetail.setInvoiceno(Integer.parseInt(invoicemodel.getInvoiceno()));
		invoiceitemdetail.setItemCode(invoicemodel.getItemcode());
		invoiceitemdetail.setQty(invoicemodel.getItemQty());
		invoiceitemdetail.setRate(invoicemodel.getRate());
		invoiceitemdetail.setAmount(invoicemodel.getAmount());
		sessionfactory.getCurrentSession().saveOrUpdate(invoiceitemdetail);
	}
	
	public List<InvoiceItemDetail> getInvoiceItemList(int invoiceno){
		return sessionfactory.getCurrentSession().createCriteria(InvoiceItemDetail.class).add(Restrictions.eq("invoiceno", invoiceno)).list();
	}
	
	public List getInvoiceno(int custId,String invoicedate){
		loger.info("get Invoice Number List");
		List<Integer>lst= sessionfactory.getCurrentSession().createCriteria(InvoiceDetail.class).setProjection(Projections.property("invoiceno")).add(Restrictions.eq("custId", custId)).add(Restrictions.eq("invoicedate", invoicedate)).list();

		return lst;
	}
	
	
	public boolean deleteinvoiceitems(int srno){
		loger.info("Delelete Invoice Items");
		sessionfactory.getCurrentSession().createQuery("delete from invoiceItemDetail where srno='"+srno+"'").executeUpdate();
		return false;
	}

}
