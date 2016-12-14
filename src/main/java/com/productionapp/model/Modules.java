package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQuery;

import javax.persistence.Table;

@Entity
@Table(name="moduletable")
@NamedNativeQuery(name="Modules",query="select  a.moduleId ,c.moduleName,c.moduledesc from userModuleAccess a  inner join users b "
		+ " on b.empCode=a.empID inner join moduleTable c on a.moduleId=c.moduleId where b.userName=? and b.password=? order by c.moduleName asc",resultClass=Modules.class)
public class Modules {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="moduleId")
	private int moduleId;
	@Column(name="moduleName")
	private String moduleName;
	@Column(name="moduledesc")
	private String moduledesc;
	
	public String getModuledesc() {
		return moduledesc;
	}
	public void setModuledesc(String moduledesc) {
		this.moduledesc = moduledesc;
	}
	public int getModuleId() {
		return moduleId;
	}
	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	

}
