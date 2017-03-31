package com.tms.spring4swagger.bean;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import java.io.Serializable;
import java.util.HashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "EmployeeDetailsnew")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class Registration implements Serializable {

	private static final long serialVersionUID = 1L;

	
	@Column(name = "Email")
	private String Email;
	
	@Id
	@GeneratedValue
	@Column(name = "EmployeeID")
	private int EmployeeID;
     
	@Column(name = "EmployeeName")
	private String EmployeeName;
	
	public int getEmployeeID() {
		return EmployeeID;
	}
	
	@XmlElement
	public void setEmployeeID(int employeeID) {
		EmployeeID = employeeID;
	}

	public String getEmployeeName() {
		return EmployeeName;
	}
	@XmlElement
	public void setEmployeeName(String employeeName) {
		EmployeeName = employeeName;
	}

	public String getFatherName() {
		return FatherName;
	}
	@XmlElement
	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}

	public String getGender() {
		return Gender;
	}
	@XmlElement
	public void setGender(String gender) {
		Gender = gender;
	}

	public int getExprience() {
		return Exprience;
	}
	@XmlElement
	public void setExprience(int exprience) {
		Exprience = exprience;
	}

	public String getEmployeeRole() {
		return EmployeeRole;
	}
	@XmlElement
	public void setEmployeeRole(String employeeRole) {
		EmployeeRole = employeeRole;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}
	@XmlElement
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public String getEmail() {
		return Email;
	}
	@XmlElement
	public void setEmail(String email) {
		Email = email;
	}

	public String getPassword() {
		return Password;
	}
	@XmlElement
	public void setPassword(String password) {
		Password = password;
	}

	public String getAddress() {
		return Address;
	}
	@XmlElement
	public void setAddress(String address) {
		Address = address;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Column(name = "FatherName")
	private String FatherName;

	@Column(name = "Gender")
	private String Gender;

	@Column(name = "Exprience")
	private int Exprience;

	@Column(name = "EmployeeRole")
	private String EmployeeRole;

	@Column(name = "PhoneNumber")
	private String PhoneNumber;

	

	@Column(name = "Password")
	private String Password;

	@Column(name = "Address")
	private String Address;
	
	public HashMap<String, String> EmployeeDetails(){
		 HashMap<String, String> cache = new HashMap<String, String>();
		   cache.put("employeeid", Integer.toString(getEmployeeID()));
		   cache.put("address",getAddress());
		   cache.put("email", getEmail());
		   cache.put("name", getEmployeeName());
		   cache.put("role", getEmployeeRole());
		   cache.put("Exprience", Integer.toString(getExprience()));
		   cache.put("phonenumber", getPhoneNumber());
		   cache.put("fname",getFatherName());
		   cache.put("gender",getGender());
		   System.out.println(cache);
		return cache;  
		 
	}
	 
}
