package com.tms.services;
import java.util.List;


import com.tms.spring4swagger.bean.AnyDayTask;
import com.tms.spring4swagger.bean.AssignModule;
import com.tms.spring4swagger.bean.Client;
import com.tms.spring4swagger.bean.createteam;
import com.tms.spring4swagger.bean.Module;
import com.tms.spring4swagger.bean.Product;
import com.tms.spring4swagger.bean.ProjectDetail;
import com.tms.spring4swagger.bean.Registration;
import com.tms.spring4swagger.bean.Task;
import com.tms.spring4swagger.bean.login;

public interface TaskService {

	public AnyDayTask updatestatus(AnyDayTask task);
	public createteam createteam(createteam employee);
	public Registration loginvalidate(Integer email,String password);
	public Module AddModule(Module e);
	public Task AddTask(Task e);
	public Product AddProduct(Product e);
	public Registration register(Registration e);
	public AssignModule assign(AssignModule e);
	public ProjectDetail resource(ProjectDetail e);
	public Client register(Client e);
	

	public List<AnyDayTask> getStatus(String date,Integer empid);
	public List<AssignModule> getModule(String date,Integer empid);
	public AnyDayTask getStatusById(Integer id);
	public boolean deleteStatusById(Integer id)throws  Exception;
	List<Registration> getEmployees();
	public Registration getEmployeeById(Integer id);
	public List getEmplyoeeIDs()throws  Exception;
	public List getProjectIDs()throws  Exception;
	public String getProjectName(Integer id)throws  Exception;
	public List getProjectManagerIDs()throws  Exception;
	public String getProjectManagerName(Integer id)throws  Exception;
	

}
