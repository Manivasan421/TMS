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




@XmlRootElement(name = "module")
@XmlAccessorType(XmlAccessType.PROPERTY)
public class ModuleList{

	 private List<AssignModule> module;
	

	 public ModuleList() {
		 module= new ArrayList<AssignModule>();
		    }

	 
	 public ModuleList(List<AssignModule> items) {
			this.module = items;
		    }


	 @XmlElement(name = "module")
	    public List<AssignModule> getStatus() {
		return module;
	    }
	 
	 public void setStatus(List<AssignModule> items) {
			this.module = items;
		    }

}
