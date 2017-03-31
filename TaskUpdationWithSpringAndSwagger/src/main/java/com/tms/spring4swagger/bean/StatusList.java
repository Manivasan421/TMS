package com.tms.spring4swagger.bean;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;




@XmlRootElement(name = "status")
@XmlAccessorType(XmlAccessType.PROPERTY)
public class StatusList{

	 private List<AnyDayTask> status;
	

	 public StatusList() {
		 status= new ArrayList<AnyDayTask>();
		    }

	 
	 public StatusList(List<AnyDayTask> items) {
			this.status = items;
		    }


	 @XmlElement(name = "status")
	    public List<AnyDayTask> getStatus() {
		return status;
	    }
	 
	 public void setStatus(List<AnyDayTask> items) {
			this.status = items;
		    }

}
