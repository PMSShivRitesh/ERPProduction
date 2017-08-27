package com.productionapp.dao.impl.invoice;

import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
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
import com.productionapp.model.invoice.DChallanInvoiceDetail;
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
		List<Integer>lst= sessionfactory.getCurrentSession().createCriteria(InvoiceDetail.class).setProjection(Projections.property("invoiceno")).add(Restrictions.eq("custId", custId)).
				add(Restrictions.eq("invoicedate", invoicedate)).add(Restrictions.eq("status","Pending")).list();

		return lst;
	}
	
	
	public boolean deleteinvoiceitems(int srno){
		loger.info("Delelete Invoice Items");
		sessionfactory.getCurrentSession().createQuery("delete from InvoiceItemDetail where srno='"+srno+"'").executeUpdate();
		return false;
	}
	
	public boolean insertInvoiceAmt(InvoiceDetail invoicedetail){
		loger.info("insert invoice amounts");
		Session session=sessionfactory.openSession();
		Query query=session.createQuery("update InvoiceDetail set basicamt =?,gstper=?,gstamt=?,gtotal=?,status=? where invoiceno =?");
		query.setParameter(0, invoicedetail.getBasicamt());
		query.setParameter(1, invoicedetail.getGstper());
		query.setParameter(2, invoicedetail.getGstamt());
		query.setParameter(3, invoicedetail.getGtotal());
		query.setParameter(4, "Confirmed");
		query.setParameter(5, invoicedetail.getInvoiceno());
		int result=query.executeUpdate();
		return true;
		
	}


	
	public InvoiceDetail getDchallandetail(int invoiceNoInt) {
		// TODO Auto-generated method stub
		loger.info("Get General Challan Detail");
		return (InvoiceDetail) sessionfactory.getCurrentSession().createCriteria(InvoiceDetail.class).add(Restrictions.eq("invoiceno", invoiceNoInt)).uniqueResult();
	}
	public List<InvoiceDetail> getgeneralinvoicedetaillst(){
		loger.info("Get General  Detail List");
		return sessionfactory.getCurrentSession().createCriteria(InvoiceDetail.class).list();
	}


	public boolean updateginvoicestatus(int invoiceno, String status) {
		// TODO Auto-generated method stub
		loger.info("update General Invoice Status");
		Session session=sessionfactory.openSession();
		Query query = session.createQuery("update InvoiceDetail set status =?" +
				" where invoiceno =?");
				query.setParameter(0, status);
				query.setParameter(1, invoiceno);
					int result = query.executeUpdate();
		return false;
	}

}
