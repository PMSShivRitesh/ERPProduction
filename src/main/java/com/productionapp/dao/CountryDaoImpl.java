package com.productionapp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Country;

@Repository("countrydao")
public class CountryDaoImpl implements CountryDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
public void saveCountry(Country mobj) {
	sessionFactory.getCurrentSession().saveOrUpdate(mobj);
	}

public boolean checkCountryExist(Country mobj) {
	boolean flag=false;
	List<String>countynamelst=sessionFactory.getCurrentSession().createCriteria(Country.class).setProjection(Projections.property("countryName")).add(Restrictions.eq("countryName",mobj.getCountryName())).list();
	if(countynamelst.size()>0){
		flag=true;}
	return flag;
	}

	@SuppressWarnings("unchecked")
	public List getCountryList() {
		return (List<Country>) sessionFactory.getCurrentSession().createCriteria(Country.class).list();
	}

	public boolean deleteCountry(Country mobj) {
		
			sessionFactory.getCurrentSession().createQuery("DELETE FROM Country WHERE CountryName ='"+mobj.getCountryName()+"'").executeUpdate();
			
			return true;
		
	}
	
	public Map<String,String> getCountryListForDropdown() {
		//return (Map<String, String>) sessionFactory.getCurrentSession().createQuery("select new map(countryId,countryName) from Country").list();
		
			Map<String,String> countrylst=new LinkedHashMap<String, String>();
			Session session=sessionFactory.openSession();
			Criteria criteria=session.createCriteria(Country.class);
			List<Country>list=criteria.list();
			Iterator itr=list.iterator();
			while(itr.hasNext())
			{
				Country obj=(Country)itr.next();
				countrylst.put(Integer.toString(obj.getCountryId()),obj.getCountryName());
			}
		
			session.close();
			return countrylst;
			
		}
	

}
