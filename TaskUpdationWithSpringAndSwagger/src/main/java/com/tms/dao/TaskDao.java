package com.tms.dao;


import java.util.List;


import com.tms.spring4swagger.bean.AnyDayTask;
import com.tms.spring4swagger.bean.AssignModule;
import com.tms.spring4swagger.bean.Client;
import com.tms.spring4swagger.bean.createteam;
import com.tms.spring4swagger.bean.Module;
import com.tms.spring4swagger.bean.Product;
import com.tms.spring4swagger.bean.ProjectDetail;
import com.tms.spring4swagger.bean.Registration;
import com.tms.spring4swagger.bean.StatusList;
import com.tms.spring4swagger.bean.Task;
import com.tms.spring4swagger.bean.login;

public interface TaskDao {

	public AnyDayTask updateStatus(AnyDayTask task) throws Exception;
	public createteam createTeam(createteam employee) throws Exception;
	public Registration loginvalidate(Integer email,String password) throws Exception;
	public Module AddModule(Module e)throws Exception;
	public Product AddProduct(Product e)throws Exception;
	public Task AddTask(Task e)throws Exception;
	public Registration register(Registration e)throws Exception;
	public AssignModule assign(AssignModule e)throws Exception;
	public ProjectDetail resource(ProjectDetail e)throws Exception;
	public Client register(Client e)throws Exception;
	
	
	public List<AnyDayTask> getStatus(String date,Integer empid)throws Exception;
	public List<AssignModule> getModule(String date,Integer empid)throws Exception;
	public AnyDayTask getStatusById(Integer id)throws Exception;
	public boolean deleteStatusById(Integer id)throws Exception;
	List<Registration> getEmployees();
	public Registration getEmployeeById(Integer id)throws Exception;
	public List getEmployeeId()throws Exception;
	
	public List getProjectId()throws Exception;
	public String getProjectName(Integer id)throws Exception;
	public List getProjectManagerId()throws Exception;
	public String getProjectManagerName(Integer id)throws Exception;
	

}
