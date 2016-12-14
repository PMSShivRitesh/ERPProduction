package com.productionapp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.District;

@Repository("districtdao")
public class DistrictDaoImpl implements DistrictDao{
	@Autowired
	SessionFactory sessionfactory;
	
	public boolean saveDistrict(District district) {
	
		System.out.print("Save District ");
		sessionfactory.getCurrentSession().saveOrUpdate(district);
		return false;
	}
	
	public List getDistrictListBystatename(int stateid){
		System.out.print("Get District List");
		return sessionfactory.getCurrentSession().createCriteria(District.class).add(Restrictions.eq("stateId", stateid)).list();
	}
	
	public boolean deleteDistrict(String statename,String Distrinctname){
		System.out.print("Delete District");
		Session session=sessionfactory.openSession();
		session.createQuery("delete from District where districtName='"+Distrinctname+"'").executeUpdate();
		session.close();
		return false;
	}

}
