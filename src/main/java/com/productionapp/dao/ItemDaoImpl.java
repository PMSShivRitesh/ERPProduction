package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Item;

@Repository("itemdaoimpl")
public class ItemDaoImpl implements ItemDao {
	Logger loger=Logger.getLogger(ItemDaoImpl.class);
	@Autowired
	SessionFactory sessionfactory;
	public boolean crateItem(Item item){
		loger.info("Create Item");
		sessionfactory.getCurrentSession().saveOrUpdate(item);
		return false;
	}
	
	public List getItemDetailList(){
		loger.info("Get All Item Detail List");
		return sessionfactory.getCurrentSession().createCriteria(Item.class).list();
	}
	
	public List<String>getItemCodeAutoComplete(String term){
		loger.info("Item Code Autocompleter");
		return sessionfactory.getCurrentSession().createCriteria(Item.class).setProjection(Projections.property("itemCode")).add(Restrictions.like("itemCode", "%"+term+"%")).list();
	}
	
	public List getItemCodeDetail(String itemCode){
		loger.info("Get Item Code Detail");
		return sessionfactory.getCurrentSession().createCriteria(Item.class).add(Restrictions.eq("itemCode", itemCode)).list();
	}

}
