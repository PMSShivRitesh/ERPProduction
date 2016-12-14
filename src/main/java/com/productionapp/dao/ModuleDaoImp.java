package com.productionapp.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Modules;

@Repository("moduledao")
public class ModuleDaoImp implements ModuleDao {
	@Autowired
	SessionFactory sessionfactory;
	private Logger loger=Logger.getLogger(ModuleDaoImp.class);
	public List<Modules>getModuleList(){
		loger.info("Get Avalilble module list");
		return sessionfactory.getCurrentSession().createCriteria(Modules.class).list();
	}

}
