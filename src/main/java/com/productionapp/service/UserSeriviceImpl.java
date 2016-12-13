package com.productionapp.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.UserDao;

@Service("userservice")
@Transactional
public class UserSeriviceImpl implements UserSerivice {
	@Autowired
	UserDao dao;

	public boolean checkUser(String username, String password) {
		// TODO Auto-generated method stub
		return dao.checkUser(username, password);
	}

	
	public Map getUserInfo(String username,String password) {
		// TODO Auto-generated method stub
		return dao.getUserInfo(username, password);
	}

	
	public Map<String, String> getUserModules(String username, String password) {
		// TODO Auto-generated method stub
		return dao.getUserModules(username, password);
	}

	
	public Map getSystems(String moduleName) throws SQLException {
		// TODO Auto-generated method stub
		return dao.getSystems(moduleName);
	}

	
	

}
