package com.tms.spring4swagger.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

import java.io.Serializable;
/**
 * @author Ranga Reddy
 * @version 1.0
 * 
 */
@Entity
@Table(name = "team")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class createteam implements Serializable {
	
	private static final long serialVersionUID = -7988799579036225137L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
	public long getId() {
		return id;
	}

	@XmlElement
	public void setId(Integer id) {
		this.id = id;
	
	}
	
	@Column(name = "ProjectName")
	private String ProjectName;
 	
 	@Column(name = "TeamID")
	private int TeamID;
 	
	@Column(name = "TeamLeadName")
	private String TeamLeadName;

	@Column(name = "StartDate")
	private String StartDate;
	
	@Column(name = "EndDate")
	private String EndDate;
	
	@Column(name = "EmployeeRole")
	private String EmployeeRole;
	
	@Column(name = "Experience")
	private int Experience;
	
	@Column(name = "EmployeeId")
	private String EmployeeId;
	
	@Column(name = "EmployeeName")
	private String EmployeeName;
	
	@Column(name = "Rating")
	private float Rating;
	public String getProjectName() {
		return ProjectName;
	}

	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}

	public int getTeamID() {
		return TeamID;
	}

	public void setTeamID(int teamID) {
		TeamID = teamID;
	}

	public String getTeamLeadName() {
		return TeamLeadName;
	}

	public void setTeamLeadName(String teamLeadName) {
		TeamLeadName = teamLeadName;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return EndDate;
	}

	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public String getEmployeeRole() {
		return EmployeeRole;
	}

	public void setEmployeeRole(String employeeRole) {
		EmployeeRole = employeeRole;
	}

	public int getExperience() {
		return Experience;
	}

	public void setExperience(int experience) {
		Experience = experience;
	}

	public String getEmployeeId() {
		return EmployeeId;
	}

	public void setEmployeeId(String employeeId) {
		EmployeeId = employeeId;
	}

	public String getEmployeeName() {
		return EmployeeName;
	}

	public void setEmployeeName(String employeeName) {
		EmployeeName = employeeName;
	}

	public float getRating() {
		return Rating;
	}

	public void setRating(float rating) {
		Rating = rating;
	}

	public void setId(long id) {
		this.id = id;
	}
	 	
}