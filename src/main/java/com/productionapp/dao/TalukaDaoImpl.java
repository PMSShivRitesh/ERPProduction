package com.productionapp.dao;


import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Taluka;
@Repository("talukadao")
public class TalukaDaoImpl implements TalukaDao {
	@Autowired
	private SessionFactory sessionfactory;
	final Logger loger=Logger.getLogger(TalukaDaoImpl.class);
	public boolean saveTaluka(Taluka obj){
		loger.info("Save taluka in dao layer");
		sessionfactory.getCurrentSession().saveOrUpdate(obj);
		return false;
	}
	
	public List<Taluka>getTalukaListByDistrict(int districtid){
		loger.info("Dao Layer--Get Taluka List Existing In district");
		return sessionfactory.getCurrentSession().createCriteria(Taluka.class).add(Restrictions.eq("districtId", districtid)).list();
	}
	
	public boolean deleteTaluka(int districtid,String talukaname){
		loger.info("Dao Layer---Delete Taluka");
		sessionfactory.getCurrentSession().createQuery("delete from Taluka where talukaName='"+talukaname+"'").executeUpdate();
		return false;
	}

}
