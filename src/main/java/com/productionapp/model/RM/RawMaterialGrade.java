package com.productionapp.model.RM;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
@Entity
@Table(name="RawMaterialGradeDetail")
public class RawMaterialGrade {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="rmId")
	private int rmId;
	@Column(name="brmId")
	private String brmId;
	@Column(name="rmSubGrade")
	private String rmSubGrade;
	@Column(name="density")
	private String density;
	@Column(name="rmShapeName")
	private String rmShapeName;
	@Column(name="dim1")
	private String dim1;
	@Column(name="dim2")
	private String dim2;
	@Column(name="dim3")
	private String dim3;
	@Column(name="dim4")
	private String dim4;
	@Column(name="supplierId")
	private int supplierId;
	@Column(name="supplierRate")
	private String supplierRate;
	@Transient
	private String suppName;
	
	public String getSuppName() {
		return suppName;
	}
	public void setSuppName(String suppName) {
		this.suppName = suppName;
	}
	public String getRmShapeName() {
		return rmShapeName;
	}
	public void setRmShapeName(String rmShapeName) {
		this.rmShapeName = rmShapeName;
	}
	public String getDim1() {
		return dim1;
	}
	public void setDim1(String dim1) {
		this.dim1 = dim1;
	}
	public String getDim2() {
		return dim2;
	}
	public void setDim2(String dim2) {
		this.dim2 = dim2;
	}
	public String getDim3() {
		return dim3;
	}
	public void setDim3(String dim3) {
		this.dim3 = dim3;
	}
	public String getDim4() {
		return dim4;
	}
	public void setDim4(String dim4) {
		this.dim4 = dim4;
	}

	public String getSupplierRate() {
		return supplierRate;
	}
	public void setSupplierRate(String supplierRate) {
		this.supplierRate = supplierRate;
	}
	public int getRmId() {
		return rmId;
	}
	public void setRmId(int rmId) {
		this.rmId = rmId;
	}
	public String getBrmId() {
		return brmId;
	}
	public void setBrmId(String brmId) {
		this.brmId = brmId;
	}
	public String getRmSubGrade() {
		return rmSubGrade;
	}
	public void setRmSubGrade(String rmSubGrade) {
		this.rmSubGrade = rmSubGrade;
	}
	public String getDensity() {
		return density;
	}
	public void setDensity(String density) {
		this.density = density;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	
}
