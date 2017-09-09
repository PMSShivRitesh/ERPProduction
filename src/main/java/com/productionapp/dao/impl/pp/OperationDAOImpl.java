package com.productionapp.dao.impl.pp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.OperationDAO;
import com.productionapp.model.pp.OperationModel;

@Repository("operationDao")
public class OperationDAOImpl   implements OperationDAO{
	
	@Autowired
	SessionFactory sessionfactory;
	@Override
	public boolean saveOperation(OperationModel opeation) throws SQLException {
		sessionfactory.getCurrentSession().saveOrUpdate(opeation);
		return false;
	}


	@Override
	public List<OperationModel> getOpertionJsonList(String processname) throws SQLException {
		//setConnection();
		/*List<OperationModel> operationJsonlst=new ArrayList<OperationModel>();
		
		pstmt=conn.prepareStatement("select operationName from operation where processName=?");
		pstmt.setString(1,processname);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
			OperationModel obj=new OperationModel();
			obj.setOperationName(rs.getString("operationName"));
			operationJsonlst.add(obj);
			
		}
		
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		*/
		return null;
	}

}
