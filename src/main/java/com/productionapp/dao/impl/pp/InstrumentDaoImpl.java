package com.productionapp.dao.impl.pp;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.InstrumentDao;
import com.productionapp.model.pp.InstrumentModel;


@Repository("instrumentDao")
public class InstrumentDaoImpl implements InstrumentDao{

	Connection conn;
	PreparedStatement pstmt,pstmt1;
	CallableStatement cstmt;
	ResultSet rs;
	
	
	
	@Override
	public boolean saveInstrumentDetail(InstrumentModel imodelobj) throws SQLException {
	//	this.setConnection();
		boolean flag=false;
		this.pstmt=this.conn.prepareStatement("insert into instrumentDetail(instrumentName,instrumentRange,instrumentAccuracy,instrumentQty)values(?,?,?,?)");
		this.pstmt.setString(1, imodelobj.getInstrumentName());
		this.pstmt.setString(2, imodelobj.getInstrumentRange());
		this.pstmt.setString(3, imodelobj.getInstrumentAccuracy());
		this.pstmt.setString(4, imodelobj.getInstrumentQty());
		int i=this.pstmt.executeUpdate();
		if(i==1)
		{
			flag=true;
		}
		else
		{
			flag=false;
		}
		if(this.pstmt!=null)
			this.pstmt.close();
		if(this.conn!=null)
			this.conn.close();
		return flag;
	}
	
	
	public List<String>getInstrumentLst() throws SQLException
	{
		//this.setConnection();
		List<String>instrumentlst=new LinkedList<String>();
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
			this.conn.close();
		return instrumentlst;
	}
}
