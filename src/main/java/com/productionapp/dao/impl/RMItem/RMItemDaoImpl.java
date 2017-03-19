package com.productionapp.dao.impl.RMItem;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.RMItem.RMItemDao;
import com.productionapp.model.Inventory.RMItem;

@Repository("rmitemdaoimpl")
public class RMItemDaoImpl implements RMItemDao {
	
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(RMItemDaoImpl.class);
	public boolean addRmItem(RMItem mobj){
		sessionfactory.getCurrentSession().save(mobj);
		return false;
	}
	
	public List<RMItem>getRmDetailList(){
		return sessionfactory.getCurrentSession().createCriteria(RMItem.class).list();
	}

}
