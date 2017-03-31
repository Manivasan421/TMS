package com.tms.spring4swagger.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "Task")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class Task {
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
	@Column(name = "Task_name")
	private String Task_name;

	@Column(name = "Description")
	private String Description;
	
	public String getTask_name() {
		return Task_name;
	}
     
	@XmlElement
	public void setTask_name(String task_name) {
		this.Task_name = task_name;
	}

	public String getDescription() {
		return Description;
	}
	@XmlElement
	public void setDescription(String description) {
		this.Description = description;
	}

	public String toString() {
		// TODO Auto-generated method stub
		return "Task [Task_name" + Task_name + ",Description" + Description + "]";
	}

}
