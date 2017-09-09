package com.productionapp.model.pp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="OperationDetail")
public class OperationModel {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="operationId")
	private int operationId;
	@Column(name="processId")
	private int processId;
	@Column(name="operationName")
	private String operationName;
	public int getOperationId() {
		return operationId;
	}
	public void setOperationId(int operationId) {
		this.operationId = operationId;
	}
	public int getProcessId() {
		return processId;
	}
	public void setProcessId(int processId) {
		this.processId = processId;
	}
	public String getOperationName() {
		return operationName;
	}
	public void setOperationName(String operationName) {
		this.operationName = operationName;
	}
	
}
