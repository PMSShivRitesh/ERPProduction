package com.productionapp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.State;
@Repository("statedao")
public class StateDaoImpl implements StateDao{
	@Autowired
	private SessionFactory sessionfacctory;

	public boolean saveState(State sateobj) {
		System.out.print("Sate Save In Dao Layer");
		sessionfacctory.getCurrentSession().saveOrUpdate(sateobj);
		return false;
	}
	
	
	
	public List<State> getAllStateList(int countryId) {
	
		System.out.print("Get List Of States");
		return sessionfacctory.getCurrentSession().createCriteria(State.class).add(Restrictions.eq("countryId", countryId)).list();
	}

	
	public boolean deleteState(String sname)  {
		System.out.print("delete selected State");
		sessionfacctory.getCurrentSession().createQuery("delete from State where stateName='"+sname+"'").executeUpdate();
		
		return false;
	}
	
	
}
