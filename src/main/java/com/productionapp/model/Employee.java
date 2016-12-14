package com.productionapp.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;

import javax.persistence.Table;




@Entity
@Table(name="Employee")
@NamedNativeQuery(name="Employee.byId",query="select  a.empCode,a.firstName,a.lastName,a.imgpath from  Employee a  inner join users b  on b.empCode=a.empCode where b.userName=? and b.password=?",resultClass=Employee.class)
public class Employee implements Serializable{

	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "empCode")
	private Long empCode;
	
	@Column(name="firstName")
	private String firstName;
	

	@Column(name="lastName")
	private String lastName;
	@Column(name="imgpath")
	private String imgpath;

	public Long getEmpCode() {
		return empCode;
	}

	public void setEmpCode(Long empCode) {
		this.empCode = empCode;
	}
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	


}
