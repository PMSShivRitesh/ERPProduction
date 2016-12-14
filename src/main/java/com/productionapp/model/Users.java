package com.productionapp.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users {
	
	
	@Id
	@Column(name="userName")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Column(name="empCode")
	private Long empCode;
	
	 private Employee employee;
	

	
	
	@ManyToOne
	   @JoinColumn(name = "empCode")
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
