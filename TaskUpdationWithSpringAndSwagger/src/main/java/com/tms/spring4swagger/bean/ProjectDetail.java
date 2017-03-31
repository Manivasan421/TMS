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
@Table(name = "Project")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class ProjectDetail {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "ProjectID")
	private Integer ProjectID;
 
	@Column(name = "ProjectName")
	private String ProjectName;

	@Column(name = "Description")
	private String Description;
	
	@Column(name = "StartDate")
	private String StartDate;
	
	@Column(name = "EndDate")
	private String EndDate;
	
	@Column(name = "Organization")
	private String Organization;
	
	@Column(name = "DocumentUrl")
	private String DocumentUrl;
	
	@Column(name = "budget")
	private String budget;
	
	
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
	}
	public Integer getProjectID() {
		return ProjectID;
	}
	@XmlElement
	public void setProjectID(Integer projectID) {
		ProjectID = projectID;
	}

	public String getProjectName() {
		return ProjectName;
	}
	@XmlElement
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}

	public String getDescription() {
		return Description;
	}
	@XmlElement
	public void setDescription(String description) {
		Description = description;
	}

	public String getStartDate() {
		return StartDate;
	}
	@XmlElement
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return EndDate;
	}
	@XmlElement
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public String getOrganization() {
		return Organization;
	}
	@XmlElement
	public void setOrganization(String organization) {
		Organization = organization;
	}

	public String getDocumentUrl() {
		return DocumentUrl;
	}
	@XmlElement
	public void setDocumentUrl(String documentUrl) {
		DocumentUrl = documentUrl;
	}


	public String getCreated() {
		return Created;
	}
	@XmlElement
	public void setCreated(String created) {
		Created = created;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	@Column(name = "Created")
	private String Created;
	 
}
