package com.productionapp.dao.impl.dchallan;

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
import com.productionapp.dao.dchallan.DchallanDao;

import com.productionapp.model.dchallan.DchallanDetail;
import com.productionapp.model.dchallan.DchallanItems;

@Repository("dchallandaoimpl")
public class DchallanDaoImpl implements DchallanDao{
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(DchallanDaoImpl.class);
	public int saveDchallanDetail(DChallanModel dchallan){
		loger.info("Save Dchallan Data");
		DchallanDetail dchallandetail=new DchallanDetail();
		dchallandetail.setCustId(dchallan.getCustId());
		dchallandetail.setDchallandate(dchallan.getDchallandate());
		
		 List<Integer>lst=getDchallanno(dchallan.getCustId(), dchallan.getDchallandate());
		 if(lst.size()>0){
			 Iterator lstitr=lst.iterator();
			 if(lstitr.hasNext()){
				 dchallandetail.setDchallanno(Integer.parseInt(lstitr.next().toString()));
				
			 }
		 }
		 else{
		dchallandetail.setPodate(dchallan.getPodate());
		dchallandetail.setDchallantype(dchallan.getDchallantype());	
		dchallandetail.setDchallanstatus("Pending");
		dchallandetail.setPono(dchallan.getPono());
		loger.info("before dchallan no="+dchallandetail.getDchallanno());
		sessionfactory.getCurrentSession().saveOrUpdate(dchallandetail);
		loger.info("dchallan no="+dchallandetail.getDchallanno());
		 }
		return dchallandetail.getDchallanno();
	}
	
	public List getDchallanno(int custId,String dchallandate){
		loger.info("get D challan No no");
		List<Integer>lst= sessionfactory.getCurrentSession().createCriteria(DchallanDetail.class).setProjection(Projections.property("dchallanno")).add(Restrictions.eq("custId", custId)).add(Restrictions.eq("dchallandate", dchallandate)).list();

		return lst;
	}
	
	
	public void saveDchallanItems(DChallanModel dchallan){
		loger.info("Save Delivery Challan Items"+dchallan.getDchallanno());
		DchallanItems challanitems=new DchallanItems();
		
		challanitems.setDchallanno(Integer.parseInt(dchallan.getDchallanno()));
		challanitems.setItemcode(dchallan.getItemcode());
		
		challanitems.setItemQty(dchallan.getItemQty());
		sessionfactory.getCurrentSession().saveOrUpdate(challanitems);
	}
	
	public List<DchallanItems> getDchallanItemList(int dcchno){
		return sessionfactory.getCurrentSession().createCriteria(DchallanItems.class).add(Restrictions.eq("dchallanno", dcchno)).list();
	}
	
	public boolean deletedchallanitems(int srno){
		loger.info("Delete DChallan Items");
		sessionfactory.getCurrentSession().createQuery("delete from DchallanItems where srno='"+srno+"'").executeUpdate();
		return false;
	}
	
	public List<DchallanDetail> getallDchallanList(){
		loger.info("Get D.Challan List");
		return sessionfactory.getCurrentSession().createCriteria(DchallanDetail.class).list();
		
	}
	
	public DchallanDetail getDchallandetail(int dchallanno){
		loger.info("Get D.Challan Detail");
		return (DchallanDetail) sessionfactory.getCurrentSession().createCriteria(DchallanDetail.class).add(Restrictions.eq("dchallanno", dchallanno)).uniqueResult();
	}
	
	public boolean updateDchallanStatus(int dchallanno,String status){
		loger.info("update D.Challan Status");
		Session session=sessionfactory.openSession();
		Query query = session.createQuery("update DchallanDetail set dchallanstatus =?" +
				" where dchallanno =?");
				query.setParameter(0, status);
				query.setParameter(1, dchallanno);
					int result = query.executeUpdate();
		return false;
	}
	
	
	public List<String>getDChallannolst(int custId,String status){
		loger.info("Get D.Challan No List");
		return sessionfactory.getCurrentSession().createCriteria(DchallanDetail.class).setProjection(Projections.property("dchallanno")).add(Restrictions.eq("custId", custId)).add(Restrictions.eq("dchallanstatus", status)).list();
	}

}
