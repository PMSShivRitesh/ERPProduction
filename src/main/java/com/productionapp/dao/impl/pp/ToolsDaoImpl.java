package com.productionapp.dao.impl.pp;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.pp.ToosDao;
import com.productionapp.model.pp.ToolModel;


@Repository("toolsdao")
public class ToolsDaoImpl implements ToosDao {
@Autowired
SessionFactory sessionfactory;

	@Override
	public boolean addTools(ToolModel toolmodel) {
		sessionfactory.getCurrentSession().save(toolmodel);
		return false;
	}
	
	
	
	@Override
	public boolean deleteTool(String toolName) {
		//this.setConnection();
		/*boolean flag=false;
		try
		{
			this.pstmt=this.conn.prepareStatement("delete from tools where toolName=?");
			this.pstmt.setString(1, toolName);
			int i=this.pstmt.executeUpdate();
			if(i==1)
			{
				flag=true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			
			try
			{
				if(this.pstmt!=null)
					this.pstmt.close();
				if(this.conn!=null)
					this.conn.close();
			}
			catch(Exception e)
			{
				
			}
		}
		
		*/
		return false;
	}
	
	
	public List<ToolModel>getToolLst()
	{
		//this.setConnection();
		/*int srno=1;
		
		List<ToolModel>tollst=new LinkedList<ToolModel>();
		try
		{
			this.pstmt=this.conn.prepareStatement("select * from tools");
			this.rs=this.pstmt.executeQuery();
			while (this.rs.next()) {
				
				ToolModel obj=new ToolModel();
				obj.setSrno(this.rs.getInt("toolId"));
				obj.setToolName(this.rs.getString("toolName"));
				tollst.add(obj);
				srno=srno+1;
				
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			try
			{
				if(this.rs!=null)
					this.rs.close();
				if(this.pstmt!=null)
					this.pstmt.close();
				if(this.conn!=null)
					this.conn.close();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		*/
		return null;
	}
	
	
	

	public List<String>getToolnameLst()
	{
		//this.setConnection();
		
		/*List<String>toolnamest=new ArrayList();
		try
		{
			this.pstmt=this.conn.prepareStatement("select toolName from tools");
			this.rs=this.pstmt.executeQuery();
			while (this.rs.next()) {
				toolnamest.add(this.rs.getString("toolName"));
			
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			try
			{
				if(this.rs!=null)
					this.rs.close();
				if(this.pstmt!=null)
					this.pstmt.close();
				if(this.conn!=null)
					this.conn.close();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}*/
		
		return null;
	}
}
