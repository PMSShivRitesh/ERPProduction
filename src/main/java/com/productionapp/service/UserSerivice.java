package com.productionapp.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public interface UserSerivice {
	public boolean checkUser(String username,String password);
	public Map getUserInfo(String username,String password);
	public Map<String,String> getUserModules(String username,String password);
	public Map getSystems(String moduleName) throws SQLException;

}
