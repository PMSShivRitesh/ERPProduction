package com.productionapp.dao.impl.sales;

import java.util.Iterator;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.bean.SalesOrderModel;
import com.productionapp.dao.sales.SalesOrderDao;
import com.productionapp.model.sales.SalesOrderDetail;
import com.productionapp.model.sales.SalesOrderItems;

@Repository("salesorderdaoimpl")
public class SalesOrderDaoImpl implements SalesOrderDao{
	@Autowired
	SessionFactory sessiofactory;
	private Logger loger=Logger.getLogger(SalesOrderDaoImpl.class);

	public int saveSalesOrderDetail(SalesOrderModel salesordermodel) {
		SalesOrderDetail salesorderdetail=new SalesOrderDetail();
		loger.info("Save Sales Order Detail");
		 salesorderdetail.setCustId(salesordermodel.getCustId());
		 salesorderdetail.setPoNo(salesordermodel.getPoNo());
		 List<Integer>lst=getSalesOrderNo(salesorderdetail.getCustId(), salesorderdetail.getPoNo());
		 if(lst.size()>0){
			 Iterator lstitr=lst.iterator();
			 if(lstitr.hasNext()){
				 salesorderdetail.setSaleorderno(Integer.parseInt(lstitr.next().toString()));
				
			 }
		 }
		 else{
			 salesorderdetail.setPoDate(salesordermodel.getPoDate());
			 salesorderdetail.setbTotal(salesordermodel.getbTotal());
			 salesorderdetail.setCstAmt(salesordermodel.getCstAmt());
			 salesorderdetail.setExciseAmt(salesordermodel.getExciseAmt());
			 salesorderdetail.setNetAmt(salesordermodel.getNetAmt());
			 salesorderdetail.setServiceTaxAmt(salesordermodel.getServiceTaxAmt());
			 salesorderdetail.setVatAmt(salesordermodel.getVatAmt());
			sessiofactory.getCurrentSession().saveOrUpdate(salesorderdetail);
		 }
	
		return salesorderdetail.getSaleorderno();
	}
	
	public void saveSalesOrderItems(SalesOrderModel salesordermodel) {
		SalesOrderItems salesorderitems=new SalesOrderItems();
		loger.info("save sales order items");
		salesorderitems.setSaleorderno(Integer.parseInt(salesordermodel.getSaleorderno()));
		salesorderitems.setItemCode(salesordermodel.getItemCode());
		salesorderitems.setQty(salesordermodel.getQty());
		salesorderitems.setUnit(salesordermodel.getUnit());
		salesorderitems.setRate(salesordermodel.getRate());
		salesorderitems.setAmt(salesordermodel.getAmt());
		salesorderitems.setDilDate(salesordermodel.getDilDate());
		sessiofactory.getCurrentSession().saveOrUpdate(salesorderitems);
		
	}
	
	public List getSalesOrderNo(int custId,String pono){
		loger.info("get sales order no");
		List<Integer>lst= sessiofactory.getCurrentSession().createCriteria(SalesOrderDetail.class).setProjection(Projections.property("saleorderno")).add(Restrictions.eq("custId", custId)).add(Restrictions.eq("poNo", pono)).list();

		return lst;
	}
	
	public List getSalesOrderitems(int salesorderno){
		return sessiofactory.getCurrentSession().createCriteria(SalesOrderItems.class).add(Restrictions.eq("saleorderno", salesorderno)).list();
	}

}
