package com.productionapp.model.pp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ProcessDetail")
public class ProcessDetail {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="processId")
	private int processId;
	@Column(name="processName")
	private String processName;
	public int getProcessId() {
		return processId;
	}
	public void setProcessId(int processId) {
		this.processId = processId;
	}
	public String getProcessName() {
		return processName;
	}
	public void setProcessName(String processName) {
		this.processName = processName;
	}

}
