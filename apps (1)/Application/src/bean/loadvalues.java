package bean;

import org.apache.struts.action.ActionForm;

public class loadvalues extends ActionForm {
	
	private String month,ename,email,department,mobile,enames;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEnames() {
		return enames;
	}

	public void setEnames(String enames) {
		this.enames = enames;
	}
	

}
