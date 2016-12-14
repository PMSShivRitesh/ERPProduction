package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.ModuleDao;
import com.productionapp.model.Modules;

@Transactional
@Service("moduleservice")
public class ModuleServiceImpl implements ModuleService {
	@Autowired
	ModuleDao dao;

	public List<Modules> getModuleList() {
		// TODO Auto-generated method stub
		return dao.getModuleList();
	}
	

}
