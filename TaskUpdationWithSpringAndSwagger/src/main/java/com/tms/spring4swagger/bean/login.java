package com.tms.spring4swagger.bean;

import java.io.Serializable;

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
@Table(name = "login")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class login implements Serializable {
	 
	@Id
	@GeneratedValue
	@Column(name = "email")
	private String email;

	@Column(name = "password")
	private String password;
	public String getEmail() {
		return email;
	}
	@XmlElement
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}
	@XmlElement
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "login [email" + email + ",password" + password + "]";
	}
}
