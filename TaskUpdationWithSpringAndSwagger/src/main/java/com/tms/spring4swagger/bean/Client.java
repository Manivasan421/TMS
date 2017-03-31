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
@Table(name = "Client")
@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class Client {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name = "ClientId")
	private Integer ClientId;

	public Integer getClientId() {
		return ClientId;
	}
	
    @XmlElement
	public void setClientId(Integer clientId) {
		ClientId = clientId;
	}

	public String getOrganization() {
		return Organization;
	}
	@XmlElement
	public void setOrganization(String organization) {
		Organization = organization;
	}

	public String getName() {
		return Name;
	}
	@XmlElement
	public void setName(String name) {
		Name = name;
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

	@Column(name = "Organization")
	private String Organization;

	@Column(name = "Name")
	private String Name;

	@Column(name = "PhoneNumber")
	private String PhoneNumber;

	@Column(name = "Email")
	private String Email;

	@Column(name = "Password")
	private String Password;

	@Column(name = "Address")
	private String Address;

}
