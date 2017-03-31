package com.tms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.tms.dao.TaskDao;
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

public class TaskServiceImpl implements TaskService {

	@Autowired
	TaskDao taskdao;

	@Override
	public AnyDayTask updatestatus(AnyDayTask task) {
		// TODO Auto-generated method stub
		try {
			taskdao.updateStatus(task);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return task;

	}
	@Override
	public createteam createteam(createteam employee) {
		// TODO Auto-generated method stub
		try {
			taskdao.createTeam(employee);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return employee;

	}
    
	
	@Override
	public Registration loginvalidate(Integer email,String password) {
		// TODO Auto-generated method stub
		Registration a=null;
		try {
			a=taskdao.loginvalidate(email,password);
			return a;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return a;

	}
	
	@Override
	public Module AddModule(Module e) {
		// TODO Auto-generated method stub
		try {
			taskdao.AddModule(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return e;

	}
	public Task AddTask(Task e) {
		// TODO Auto-generated method stub
		
		try {
			taskdao.AddTask(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return e;

	}

	public Product AddProduct(Product e) {
		try {
			taskdao.AddProduct(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}
	
	public Registration register(Registration e) {
		try {
			taskdao.register(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}
	
	public ProjectDetail resource(ProjectDetail e) {
		try {
			taskdao.resource(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}
	
	public Client register(Client e) {
		try {
			taskdao.register(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}
	
	public AssignModule assign(AssignModule e) {
		try {
			taskdao.assign(e);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return e;
	}
	
	@Override
	public List<AnyDayTask> getStatus(String date,Integer empid) {
		 
		
		try {
			List<AnyDayTask> st=  taskdao.getStatus(date,empid);
			return st;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   return null;
		
	}
	
    public AnyDayTask getStatusById(Integer id) {
		

	AnyDayTask emp;
		try {
			emp = taskdao.getStatusById(id);
			return emp;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			System.out.println("to add new employee service");
		
		
		return null;
	
	}

@Override
public boolean deleteStatusById(Integer id) throws Exception {
	
	
	
	return taskdao.deleteStatusById(id);
}

@Override
public List<AssignModule> getModule(String date,Integer empid) {
	 
	
	try {
		List<AssignModule> st=  taskdao.getModule(date,empid);
		return st;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   return null;
	
}
	

@Override
public List<Registration> getEmployees() {
	
	List<Registration> EmployeeList=  taskdao.getEmployees();
	
	return EmployeeList;
}

public Registration getEmployeeById(Integer id) {
	Registration emp;
		try {
			emp = taskdao.getEmployeeById(id);
			return emp;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			System.out.println("Get Employee Detail By Id");
		return null;
	}

@Override
public List getEmplyoeeIDs() throws Exception {
	
	List ids=  taskdao.getEmployeeId();
	
	return ids;
}

@Override
public List getProjectIDs() throws Exception {
	
	List ids=  taskdao.getProjectId();
	
	return ids;
}


@Override
public String getProjectName(Integer a) throws Exception {
	
	String ids=  taskdao.getProjectName(a);
	
	return ids;
}

@Override
public List getProjectManagerIDs() throws Exception {
	
	List ids=  taskdao.getProjectManagerId();
	
	return ids;
}


@Override
public String getProjectManagerName(Integer a) throws Exception {
	
	String ids=  taskdao.getProjectManagerName(a);
	
	return ids;
}

}
