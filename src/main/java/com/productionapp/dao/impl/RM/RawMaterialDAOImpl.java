package com.productionapp.dao.impl.RM;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.productionapp.dao.RM.RawMaterialDAO;
import com.productionapp.model.RM.RawMaterial;
import com.productionapp.model.RM.RawMaterialGrade;
import com.productionapp.model.RM.RawMaterialShapeRange;


@Repository("rawmaterialdao")
public class RawMaterialDAOImpl implements RawMaterialDAO{

	@Autowired
	SessionFactory sessiofactory;
	@Override
	public boolean saveRMGradeDetail(RawMaterialGrade rmmodel) {
		sessiofactory.getCurrentSession().save(rmmodel);
		return false;
	}

	@Override
	public List getRMGradeNameBaseOnIdList(String bgradeid) {
		
		return sessiofactory.getCurrentSession().createCriteria(RawMaterialGrade.class).add(Restrictions.eq("brmId", bgradeid)).list();
	
		
	}

	public List<String> getBRGrade() throws SQLException {
		/*this.setConnection();
		List<String> brgradelst=new LinkedList<>();
		this.pstmt=conn.prepareStatement("select brmgname from basicRawMaterialGrade");
		this.rs=pstmt.executeQuery();
		while(rs.next())
		{
			
			brgradelst.add(rs.getString("brmgname"));
		}
		
		if(this.rs!=null)
			rs.close();
		if(this.pstmt!=null)
			this.pstmt.close();
		if(this.conn!=null)
			conn.close();*/
		return null;
	}

	@Override
	public boolean saveRmGrade(RawMaterialGrade rmgrade)throws SQLException {
		/*boolean flag;
		setConnection();
		
		if(rmgrade.getRmShapeName().equals("Rectangel"))
		{
			pstmt=conn.prepareStatement("insert into RawMaterialGrade(brmgname,rmGrade,spw,rmShapeName ,"
					+ "minDim ,maxDim ,minDim1 ,maxDim1,supplierName ,supplierRate) values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, rmgrade.getBrmgname());
			pstmt.setString(2, rmgrade.getRmGrade());
			pstmt.setString(3, rmgrade.getSpw());
			pstmt.setString(4,rmgrade.getRmShapeName());
			pstmt.setString(5, rmgrade.getDim1());
			pstmt.setString(6,rmgrade.getDim2());
			pstmt.setString(7, rmgrade.getDim3());
			pstmt.setString(8, rmgrade.getDim4());
			pstmt.setString(9, rmgrade.getSupplierName());
			pstmt.setString(10,rmgrade.getSupplierRate());
			
		}
		if(rmgrade.getRmShapeName().equals("Round"))
		{
			pstmt=conn.prepareStatement("insert into RawMaterialGrade(brmgname,rmGrade,spw,rmShapeName,minDim,maxDim,supplierName,supplierRate) values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, rmgrade.getBrmgname());
			pstmt.setString(2, rmgrade.getRmGrade());
			pstmt.setString(3, rmgrade.getSpw());
			
			pstmt.setString(4, rmgrade.getRmShapeName());
			pstmt.setString(5, rmgrade.getDim1());
			pstmt.setString(6, rmgrade.getDim2());
			
			pstmt.setString(7, rmgrade.getSupplierName());
			pstmt.setString(8, rmgrade.getSupplierRate());
			
			
		}
		
	
		int i=pstmt.executeUpdate();
		if(i==1)
		{
			flag=true;
		}
		if(pstmt!=null)
		{
			pstmt.close();
		}
		if(conn!=null)
		{
			conn.close();
		}*/
		return false;
	}

	
	

	@Override
	public boolean saveRmShape(String rmShapeName) throws SQLException {
		// TODO Auto-generated method stub
		boolean flag=false;
		/*setConnection();	
		pstmt=conn.prepareStatement("insert into RawMaterialShape values(?)");
		pstmt.setString(1, rmShapeName);
		int i=pstmt.executeUpdate();
		if(i==1)
		{
			flag=true;
		}
		if(pstmt!=null)
		{
			pstmt.close();
		}
		if(conn!=null)
		{
			conn.close();
		}
			*/	
		return false;
		
	}


	
	@Override
	public List<String> getRMShapeList() throws SQLException {
		/*this.setConnection();
		List<String> rmshapelst=new LinkedList<>();
		this.pstmt=conn.prepareStatement("select rmShapeName from RawMaterialShape");
		this.rs=pstmt.executeQuery();
		while(rs.next())
		{
			
			rmshapelst.add(rs.getString("rmShapeName"));
		}
		
		if(this.rs!=null)
			rs.close();
		if(this.pstmt!=null)
			this.pstmt.close();
		if(this.conn!=null)
			conn.close();*/
		return null;
	}
	
	

	@Override
	public List<RawMaterial> addSahpeDetail(RawMaterial rawMaterial) throws SQLException {
		/*List<RawMaterial> rmShapeDetailList=new LinkedList<>();
		
		setConnection();
		pstmt=conn.prepareStatement("insert into RawMaterialShapeDetail values(?,?,?)");
		pstmt1=conn.prepareStatement("select * from  RawMaterialShapeDetail");
	
		pstmt.setString(1, rawMaterial.getShapeName());
		pstmt.setString(2, rawMaterial.getShapeParameter());
		pstmt.setString(3, rawMaterial.getShapeDimension());
		int i=pstmt.executeUpdate();
		if(i==1)
		{
			rs=pstmt1.executeQuery();
			while(rs.next())
			{
				RawMaterial obj=new RawMaterial();
				obj.setShapeName("circle");
				obj.setShapeParameter(rs.getString("shapeParameter"));
				obj.setShapeDimension(rs.getString("shapeDimension"));
				rmShapeDetailList.add(obj);
			}
		}
		if(rs!=null)
		{
			rs.close();
		}
		if(pstmt1!=null)
			pstmt1.close();
		if(pstmt!=null)
			pstmt.close();
		if(conn!=null)
			conn.close();
		*/
		
		return null;
	}

	
	
	@Override
	public List<RawMaterial> getSahpeDetailInJsonList(String rmShapeName)
			throws SQLException {
/*List<RawMaterial> rmShapeDetailJsonList=new LinkedList<>();
		
		setConnection();
	
		pstmt1=conn.prepareStatement("select * from  RawMaterialShapeDetail");
		rs=pstmt1.executeQuery();
			while(rs.next())
			{
				RawMaterial obj=new RawMaterial();
				obj.setShapeName("circle");
				obj.setShapeParameter(rs.getString("shapeParameter"));
			
				rmShapeDetailJsonList.add(obj);
			}
	
		if(rs!=null)
		{
			rs.close();
		}
		if(pstmt1!=null)
			pstmt1.close();
		
		if(conn!=null)
			conn.close();
		
		*/
		return null;
	}

	@Override
	public boolean saveMaterialShapeRange(RawMaterialShapeRange rawMaterialRange) throws SQLException {
		/*setConnection();
		boolean flag=false;
		pstmt=conn.prepareStatement("insert into rawMaterialShapeRange values(?,?,?,?)");
		pstmt.setString(1, rawMaterialRange.getRmShapeName());
		pstmt.setString(2, rawMaterialRange.getRmSizeRange());
		pstmt.setString(3, rawMaterialRange.getSupplierName());
		pstmt.setString(4, rawMaterialRange.getSupplierRate());
		int i=pstmt.executeUpdate();
		if(i==1)
		{
			flag=true;
		}
		if(pstmt!=null)
		{
			pstmt.close();
		}
		if(conn!=null)
		{
			conn.close();
		}*/
		return false;
	}


	@Override
	public List<RawMaterialShapeRange> getMaterialShapeRangeForJson(String shapename,String dim1,String dim2,String dim3)
			throws SQLException {
		/*this.setConnection();
		
		String rmSizeRange="";
		String maxdim="";
		List<RawMaterialShapeRange> rmShapeRangJsonlst=new ArrayList<RawMaterialShapeRange>();
		if(shapename.equals("Rectangel"))
		{
			this.pstmt=conn.prepareStatement("select distinct(rmSizeRange) from rawMaterialShapeRange where rmShapeName=?");
			pstmt.setString(1,shapename);
			rs=pstmt.executeQuery();
			
		}
		
		if(shapename.equals("Round"))
		{
			this.pstmt1=conn.prepareStatement("select maxDim from RawMaterialGrade where rmShapeName=? and maxDim>=? order by maxDim");
			this.pstmt1.setString(1, shapename);
			this.pstmt1.setString(2, dim2);
			this.rs=this.pstmt1.executeQuery();
			if(this.rs.next())
			{
				maxdim=this.rs.getString("maxDim");
			}
			this.pstmt=conn.prepareStatement("select minDim,maxDim from RawMaterialGrade where rmShapeName=? and minDim>=? and maxDim<=?");
			pstmt.setString(1,shapename);
			pstmt.setString(2,dim2);
			pstmt.setString(3,maxdim);
			rs1=pstmt.executeQuery();
			while(rs1.next())
			{
				RawMaterialShapeRange obj=new RawMaterialShapeRange();
				rmSizeRange=rs1.getString("minDim")+"*"+rs1.getString("maxDim");
				obj.setRmSizeRange(rmSizeRange);
				rmShapeRangJsonlst.add(obj);	
			}
		}
		
		
		
		if(rs!=null)
			rs.close();
		if(rs1!=null)
			rs1.close();
		if(pstmt!=null)
			pstmt.close();
		if(pstmt1!=null)
			pstmt1.close();
		if(conn!=null)
			conn.close();
		*/
		return null;
	}




	@Override
	public List<RawMaterialShapeRange> getJsonSupplierForQuotationList(String range,String shapename) throws SQLException {
		/*this.setConnection();
		List<RawMaterialShapeRange> supplierJsonlstforquotation=new ArrayList<RawMaterialShapeRange>();
		if(shapename.equals("Round"))
		{
			System.out.print(range);
			
			String[] parts = range.split("\\*");
			String dim1=parts[0];
			String dim2=parts[1];
			
			this.pstmt=conn.prepareStatement("select supplierName from RawMaterialGrade where minDim=? and maxDim=? and rmShapeName=? order by supplierRate limit 3");
			pstmt.setString(1,dim1);
			pstmt.setString(2,dim2);
			pstmt.setString(3,shapename);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				RawMaterialShapeRange obj=new RawMaterialShapeRange();
				obj.setSupplierName(rs.getString("supplierName"));
				supplierJsonlstforquotation.add(obj);
				
			}
			
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



	@Override
	public List<RawMaterialShapeRange> getSupplierRateForQuotation(String name,String rmSize,String rmshapenm)
			throws SQLException {
		/*this.setConnection();
		List<RawMaterialShapeRange> supplierRateJsonlstforquotation=new ArrayList<RawMaterialShapeRange>();
		
		if(rmshapenm.equals("Round"))
		{
			
			
			String[] parts =rmSize.split("\\*");
			String dim1=parts[0];
			String dim2=parts[1];
			this.pstmt=conn.prepareStatement("select supplierRate from RawMaterialGrade where supplierName=? and minDim=? and maxDim=? and rmShapeName=?");
			pstmt.setString(1,name);
			pstmt.setString(2, dim1);
			pstmt.setString(3, dim2);
			pstmt.setString(4, rmshapenm);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				RawMaterialShapeRange obj=new RawMaterialShapeRange();
				obj.setSupplierRate(rs.getString("supplierRate"));
			
				supplierRateJsonlstforquotation.add(obj);
			
			}
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
