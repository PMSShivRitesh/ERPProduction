package com.productionapp.dao.impl.RMItem;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.RMItem.RMItemDao;
import com.productionapp.model.RMItem.RMItem;

@Repository("rmitemdaoimpl")
public class RMItemDaoImpl implements RMItemDao {
	
	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(RMItemDaoImpl.class);
	public boolean addRmItem(RMItem mobj){
		sessionfactory.getCurrentSession().save(mobj);
		return false;
	}

}
