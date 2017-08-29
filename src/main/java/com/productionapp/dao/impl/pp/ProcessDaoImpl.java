package com.productionapp.dao.impl.pp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.ProcessDao;
import com.productionapp.model.pp.ProcessDetail;

@Repository("processDao")
public class ProcessDaoImpl implements ProcessDao {

	@Autowired
	SessionFactory sessionfactory;
	Logger loger=Logger.getLogger(ProcessDaoImpl.class);
	@Override
	public boolean saveProcess(ProcessDetail processdetail){
			loger.info("adding processdetail");
			sessionfactory.getCurrentSession().save(processdetail);
			return false;
		
	}


	@Override
	public List<String> getProcessList() throws SQLException {
		//this.setConnection();
	/*	List<String>proceesList=new LinkedList<String>();
		this.pstmt=this.conn.prepareStatement("select processName from process");
		
		this.rs =this.pstmt.executeQuery();
		while(this.rs.next())
		{
			proceesList.add(rs.getString("processName"));
		}
		if(this.rs!=null)
			this.rs.close();
		if(this.pstmt!=null)
			this.pstmt.close();
		if(this.conn!=null)
			this.conn.close();
		return proceesList;*/
		return null;
	}
	
	
	@Override
	public List<ProcessDetail> getppAllProcessDetail() throws SQLException {
		//setConnection();
		/*List<ProcessModel> ppallProcessDetaillst=new LinkedList<>();
		
		pstmt=conn.prepareStatement("select * from process");
		
		this.rs=pstmt.executeQuery();
		while(rs.next())
		{
			
				ProcessModel obj= new ProcessModel();
				obj.setProcessName(rs.getString("processName"));
				obj.setScheduledQty(rs.getString("scheduledQty"));
				obj.setScheduledTime(rs.getString("scheduledTime"));
				ppallProcessDetaillst.add(obj);
			
		}
			
		
		if(rs!=null)
			rs.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		
		return ppallProcessDetaillst;*/
		return null;
	}
	
	
	

}
