package com.productionapp.model.pp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tooldetail")
public class ToolModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="toolId")
	private int toolId;
	@Column(name="toolName")
	String toolName;
	public int getToolId() {
		return toolId;
	}
	public void setToolId(int toolId) {
		this.toolId = toolId;
	}
	public String getToolName() {
		return toolName;
	}
	public void setToolName(String toolName) {
		this.toolName = toolName;
	}
	

}
