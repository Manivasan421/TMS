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
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "AnyDayTask1")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class AnyDayTask implements Serializable {

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

	@Column(name = "Date")
	private String Date;
	
	
	@Column(name = "empid")
	private int empid;

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	@Column(name = "Project")
	private String Project;

	@Column(name = "Task")
	private String Task;

	@Column(name = "Product")
	private String Product;

	@Column(name = "TaskDescription")
	private String TaskDescription;

	@Column(name = "Assignhours")
	private int Assignhours;

	@Column(name = "Actualhours")
	private int Actualhours;

	@Column(name = "Status")
	private String Status;

	public String getDate() {
		return Date;
	}

	@XmlElement
	public void setDate(String date) {
	
		Date = date;
	}

	public String getProject() {
		return Project;
	}

	@XmlElement
	public void setProject(String project) {
		Project = project;
	}

	public String getTask() {
		return Task;
	}

	@XmlElement
	public void setTask(String task) {
		Task = task;
	}

	public String getProduct() {
		return Product;
	}

	@XmlElement
	public void setProduct(String product) {
		System.out.println(product);
		Product = product;
	}

	public String getTaskDescription() {
		return TaskDescription;
	}

	@XmlElement
	public void setTaskDescription(String taskDescription) {
		TaskDescription = taskDescription;
	}

	public int getAssignhours() {
		return Assignhours;
	}

	@XmlElement
	public void setAssignhours(int assignhours) {
		Assignhours = assignhours;
	}

	public int getActualhours() {
		return Actualhours;
	}

	@XmlElement
	public void setActualhours(int actualhours) {
		Actualhours = actualhours;
	}

	public String getStatus() {
		return Status;
	}

	@XmlElement
	public void setStatus(String status) {
		Status = status;
	}
    
	@Override
	public String toString() {
		return "AnyDayTask [idmm" + id + ",Date" + Date +",empid"+empid +",Project" + Project + ",Task" + Task + ",Product" + Product
				+ ",TaskDescription" + TaskDescription + ",Assignhours" + Assignhours + ",Actualhours" + Actualhours
				+ ",Status" + Status + "]";
	}
	
	public HashMap<String, String> statusvalues(){
		 HashMap<String, String> cache = new HashMap<String, String>();
		   cache.put("date", getDate());
		   cache.put("project",getProject());
		   cache.put("task", getTask());
		   cache.put("product", getProduct());
		   cache.put("taskdescription", getTaskDescription());
		   cache.put("assignedhours", Integer.toString(getAssignhours()));
		   cache.put("actualhours", Integer.toString(getActualhours()));
		   cache.put("status",getStatus());
		return cache;  
		 
	}

}
