package com.productionapp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NamedNativeQuery;

@Entity
@Table(name="systemtable")
@NamedNativeQuery(name="Systems",query="select systemId,systemName,SystemDesc,systemlink from systemTable where moduleId=? and status=? order by SystemName asc",resultClass=Systems.class)
public class Systems {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="systemId")
	private int systemId;
	
	@Column(name="systemName")
	private String systemName;
	
	@Column(name="Systemdesc")
	private String Systemdesc;
	
	@Column(name="systemlink")
	private String systemlink;
	
	public String getSystemlink() {
		return systemlink;
	}
	public void setSystemlink(String systemlink) {
		this.systemlink = systemlink;
	}
	public int getSystemId() {
		return systemId;
	}
	public void setSystemId(int systemId) {
		this.systemId = systemId;
	}
	public String getSystemName() {
		return systemName;
	}
	public void setSystemName(String systemName) {
		this.systemName = systemName;
	}
	public String getSystemdesc() {
		return Systemdesc;
	}
	public void setSystemdesc(String systemdesc) {
		Systemdesc = systemdesc;
	}

}
