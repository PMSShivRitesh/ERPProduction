package com.productionapp.dao.impl.pp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.InstrumentDao;
import com.productionapp.model.pp.InstrumentModel;


@Repository("instrumentDao")
public class InstrumentDaoImpl implements InstrumentDao{

@Autowired
SessionFactory sessionfactory;
	
	
	@Override
	public boolean saveInstrumentDetail(InstrumentModel imodelobj) throws SQLException {
		sessionfactory.getCurrentSession().save(imodelobj);
		return false;
	}
	
	
	public List<String>getInstrumentLst() throws SQLException
	{
		//this.setConnection();
		/*List<String>instrumentlst=new LinkedList<String>();
		this.pstmt=this.conn.prepareStatement("select instrumentName from instrumentDetail");
		this.rs=this.pstmt.executeQuery();
		while(this.rs.next())
		{
			instrumentlst.add(rs.getString("instrumentName"));
		}
		
		if(this.rs!=null)
			this.rs.close();
		if(this.pstmt!=null)
			this.pstmt.close();
		if(this.conn!=null)
			this.conn.close();*/
		return null;
	}
}
