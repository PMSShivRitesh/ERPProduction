package com.productionapp.model.pp;

import javax.persistence.Entity;
import javax.persistence.Table;

public class ProcessModel {
	
	private String processName;
	private String	scheduledQty;
	private String	scheduledTime;
	public String getProcessName() {
		return processName;
	}
	public void setProcessName(String processName) {
		this.processName = processName;
	}
	public String getScheduledQty() {
		return scheduledQty;
	}
	public void setScheduledQty(String scheduledQty) {
		this.scheduledQty = scheduledQty;
	}
	public String getScheduledTime() {
		return scheduledTime;
	}
	public void setScheduledTime(String scheduledTime) {
		this.scheduledTime = scheduledTime;
	}

}
