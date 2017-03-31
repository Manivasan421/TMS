package com.tms.spring4swagger.bean;

import java.util.*;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;





@XmlRootElement(name = "employees")
@XmlAccessorType(XmlAccessType.PROPERTY)
public class EmployeeList {

	 private List<Registration> employees;

	 public EmployeeList() {
		 employees= new ArrayList<Registration>();
		    }

	 
	 public EmployeeList(List<Registration> items) {
			this.employees = items;
		    }


	 @XmlElement(name = "employee")
	    public List<Registration> getCustomers() {
		return employees;
	    }
	 
	 public void setEmployees(List<Registration> items) {
			this.employees = items;
		    }
	 
	
	
}
