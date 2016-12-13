/*Author : Hanmant B Guddapure
 * Date  :17072016
 * Purpose:This Class performs only user system login functionality.
 * 
 */

package com.productionapp.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.model.Employee;
import com.productionapp.model.Modules;
import com.productionapp.model.Systems;
import com.productionapp.model.Users;

@Repository("userdao")
public class UserDaoImpl implements UserDao {
	

	Connection conn;
	PreparedStatement pstmt,pstmt1;
	CallableStatement cstmt;
	ResultSet rs;
	@Autowired
	private SessionFactory sessionFactory;
	
	
	//This Methode check user authontication
	public boolean checkUser(String username,String password)
	{
		
		System.out.println("In Check login");
		Session session = sessionFactory.openSession();
		boolean userFound = false;
		//Query using Hibernate Query Language
		String SQL_QUERY =" from Users where username=? and password=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,username);
		query.setParameter(1,password);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}

		session.close();
		return userFound;  
		
	}
	
	
	//End Authontication checking
	
//This method get user basic info for menting in session
	public Map getUserInfo(String username,String password)
	{
		Map<String,String>userinfo=null;
		userinfo=new HashMap<String,String>();
		
		System.out.println("Getting Employee Info for session storing");
		Session session = sessionFactory.openSession();

		boolean userFound = false;
		//Query using Hibernate NamedNativeQuery Query 
		Query query=session.getNamedQuery("Employee.byId");
		query.setString(0, username);
		query.setString(1, password);
		//End HQL query
	
		List list = query.list();
		
		Iterator itr=list.iterator();
		while(itr.hasNext())
		{
			Employee obj=(Employee)itr.next();
			userinfo.put("userName",username);
			userinfo.put("EmployeeId",Long.toString((obj.getEmpCode())));
			userinfo.put("Firstname",obj.getFirstName());
			userinfo.put("Lastname",obj.getLastName());
		
		}
		
		session.close();
		return userinfo;
	}
	
	
	//End session information
	
//This Methode get allocated modules for user to display left panel of homepage
	public Map<String,String> getUserModules(String username,String password)
	{
		System.out.println("Getting Module Allocated to Employee");
		Map<String,String>usermodulelst=new LinkedHashMap<String,String>(); 
		Session session=sessionFactory.openSession();
		Query query=session.getNamedQuery("Modules");
		query.setString(0, username);
		query.setString(1, password);
		List list=query.list();
		Iterator itr=list.iterator();
		while(itr.hasNext())
			{
				Modules module=(Modules)itr.next();
				usermodulelst.put(Integer.toString(module.getModuleId()),module.getModuleName());
				
			}
	
		session.close();
		return usermodulelst;
	}

	public Map getSystems(String moduleName) throws SQLException {
		System.out.println("Getting Module Sytems Allocated to Employee");
		Map<String,String> systemlst = new LinkedHashMap<String,String>(); 
		Session session=sessionFactory.openSession();
		Query query=session.getNamedQuery("Systems");
		query.setString(0, moduleName);
		query.setString(1, "Active");
	    List list=query.list();
	    Iterator itr=list.iterator();
		while(itr.hasNext())
		{
			Systems module=(Systems)itr.next();
			systemlst.put(module.getSystemlink(),module.getSystemdesc());
		}
		session.close();
		return systemlst;
		
	}
	
	
	

}
