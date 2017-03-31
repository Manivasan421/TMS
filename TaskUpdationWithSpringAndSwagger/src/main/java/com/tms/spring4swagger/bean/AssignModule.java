package com.tms.spring4swagger.bean;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "AssignTask")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class AssignModule implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Integer id;

	public long getId() {
		return id;
	}

	@XmlElement
	public void setId(Integer id) {
		this.id = id;
	}
 	@Column(name = "EmployeeName")
	private String EmployeeName;
 	
 	@Column(name = "EmployeeId")
	private int EmployeeId;

	@Column(name = "ProjectName")
	private String ProjectName;

	@Column(name = "ModuleName")
	private String ModuleName;

	@Column(name = "TaskName")
	private String TaskName;

	public String getEmployeeName() {
		return EmployeeName;
	}

	public void setEmployeeName(String employeeName) {
		EmployeeName = employeeName;
	}
	public int getEmployeeId() {
		return EmployeeId;
	}

	public void setEmployeeId(int employeeId) {
		EmployeeId = employeeId;
	}

	public String getProjectName() {
		return ProjectName;
	}

	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}

	public String getModuleName() {
		return ModuleName;
	}

	public void setModuleName(String moduleName) {
		ModuleName = moduleName;
	}

	public String getTaskName() {
		return TaskName;
	}

	public void setTaskName(String taskName) {
		TaskName = taskName;
	}

	public String getModuleDescription() {
		return ModuleDescription;
	}

	public void setModuleDescription(String moduleDescription) {
		ModuleDescription = moduleDescription;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public int getActualhours() {
		return Actualhours;
	}

	public void setActualhours(int actualhours) {
		Actualhours = actualhours;
	}
	@Column(name = "ModuleDescription")
	private String ModuleDescription;
 
	@Column(name = "Date")
	private String Date;
	
	@Column(name = "Assinghours")
	private int Actualhours;
	  
}
