package com.tms.spring4swagger.controller;

import io.swagger.annotations.ApiOperation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.tms.services.TaskService;
import com.tms.spring4swagger.bean.AnyDayTask;
import com.tms.spring4swagger.bean.AssignModule;
import com.tms.spring4swagger.bean.Client;
import com.tms.spring4swagger.bean.EmployeeList;
import com.tms.spring4swagger.bean.createteam;
import com.tms.spring4swagger.bean.Module;
import com.tms.spring4swagger.bean.ModuleList;
import com.tms.spring4swagger.bean.Product;
import com.tms.spring4swagger.bean.ProjectDetail;
import com.tms.spring4swagger.bean.Registration;
import com.tms.spring4swagger.bean.Registration2;
import com.tms.spring4swagger.bean.StatusList;
import com.tms.spring4swagger.bean.Task;
import com.tms.spring4swagger.bean.login;
 
@RestController
@Controller
public class TestController {
	 
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView getData() {

			ModelAndView model = new ModelAndView("welcome");
		 
			return model;

		}*/
	


	@Autowired
	TaskService dataServices;
	 
	@Autowired
	private MessageSource messageSource;
 
	@ApiOperation(value = "To login",notes="Method for login employee",response=Registration.class)
	@RequestMapping(value = "/login/{employeeID},{password}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
    public @ResponseBody
	String loginvalidate(@PathVariable("employeeID") Integer employeeID,@PathVariable("password") String password,HttpSession session) {
		System.out.println("welcome");
		Registration l=dataServices.loginvalidate(employeeID,password);
		String str=l.getEmployeeRole();
		       System.out.println(l.getEmployeeID());
  		 
  			if (str.equals("Project Manager"))
  			{
  				session.setAttribute("empid", l.getEmployeeID());
  				session.setAttribute("name", l.getEmployeeName());
  				return "Project Manager";
  			}
  			if (str.equals("Senior Manager"))
  			{
  				session.setAttribute("empid", l.getEmployeeID());
  				session.setAttribute("name", l.getEmployeeName());
  				return "Senior Manager";
  			}
  			if (str.equals("Admin"))
  			{
  				session.setAttribute("empid", l.getEmployeeID());
  				session.setAttribute("name", l.getEmployeeName());
  				
  				return "Admin";
  			}
  			if (str.equals("Developer"))
  			{
  				session.setAttribute("empid", l.getEmployeeID());
  				session.setAttribute("name", l.getEmployeeName());
  			
  			
  				return "Developer";
  			}
  			else
  		     return "invalid";
	}
	
	@ApiOperation(value = "To add new Employee",notes="Method for add status",response=AnyDayTask.class)
    @RequestMapping(value = "/addStatus", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
	AnyDayTask updatestatus(@RequestBody AnyDayTask task,HttpSession session) {
		
		AnyDayTask e=(AnyDayTask)dataServices.updatestatus(task);
  		return e;
	}
	
	@ApiOperation(value = "To create new team ",notes="Method for add new team",response=createteam.class)
    @RequestMapping(value = "/createteam", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
	createteam createteam(@RequestBody createteam task) {
		createteam e=(createteam)dataServices.createteam(task);
  		return e;

	}
	
	@ApiOperation(value = "To add module",notes="Method for add new module",response=Module.class)
    @RequestMapping(value = "/addmodule", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
	Module AddModule(@RequestBody Module m) {
		Module e=(Module)dataServices.AddModule(m);
  		return e;

	}
	
	
	@ApiOperation(value = "To add Tasks",notes="Method for add new Task",response=Task.class)
    @RequestMapping(value = "/addtask", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
	Task AddTask(@RequestBody Task m) {
		Task e=(Task)dataServices.AddTask(m);
  		return e;

	}
	
	
	
	@ApiOperation(value = "To add product",notes="Method for add new product",response=Product.class)
    @RequestMapping(value = "/addproduct", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
	Product AddProduct(@RequestBody Product m) {
		Product e=(Product)dataServices.AddProduct(m);
  		return e;

	}
	

	@ApiOperation(value = "Employee Registraion",notes="Method for register new Employee",response=Registration.class)
    @RequestMapping(value = "/register", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    Registration register(@RequestBody Registration m) {
		Registration e=(Registration)dataServices.register(m);
  		return e;

	}
	
	@ApiOperation(value = "Assign Task",notes="Assign Task for our Team Employees",response=AssignModule.class)
    @RequestMapping(value = "/assigntask", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    AssignModule assign(@RequestBody AssignModule m) {
		AssignModule e=(AssignModule)dataServices.assign(m);
  		return e; 
	}
	
	@ApiOperation(value = "Assign Task",notes="Assign Task for our Team Employees",response=AssignModule.class)
    @RequestMapping(value = "/projectresource", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    ProjectDetail resource(@RequestBody ProjectDetail m) {
		ProjectDetail e=(ProjectDetail)dataServices.resource(m);
  		return e; 
	}
	
	@ApiOperation(value = "Assign Task",notes="Assign Task for our Team Employees",response=AssignModule.class)
    @RequestMapping(value = "/clientregister", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    Client register(@RequestBody Client m) {
		Client e=(Client)dataServices.register(m);
  		return e; 
	}
	
	
	@ApiOperation(value = "Gets all the Status by date", notes = "Retrieves all Status details", response = AnyDayTask.class, responseContainer = "List")
	@RequestMapping(value = "/getStatus/{date},{empid}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
    @ResponseBody 
    public StatusList getStatus(@PathVariable String date,@PathVariable("empid") Integer empid,HttpSession session) {	
		System.out.println(empid);
		System.out.println("Welcome");
	return new StatusList(new ArrayList<AnyDayTask>(dataServices.getStatus(date,empid)));
    }
	
	
	
	   @ApiOperation(value = "To get status By StatusId",notes="Method for get status by Id",response = AnyDayTask.class)
	    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	   
	    @ResponseBody 
	    public HashMap<String, String> getStatus(@PathVariable Integer id) {
	    
		   AnyDayTask employee = dataServices.getStatusById(id);
		   
		   
	     return employee.statusvalues();
	    }
	    
	   
	    @ApiOperation(value = "To delete Employee By Id",notes="Method for delete employee Details by Id",response = AnyDayTask.class)
	    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public String deleteEmployee(@PathVariable Integer id) {
	    	try{
	     dataServices.deleteStatusById(id);
	     return "Status detail deletded ";
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return "Status  id detail not fetched";
	    }
	    
	    
	    @ApiOperation(value = "Gets all the Module by date", notes = "Retrieves My assiged Module details", response = AssignModule.class, responseContainer = "List")
		@RequestMapping(value = "/getModule/{date},{empid}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public ModuleList getModule(@PathVariable String date,@PathVariable("empid") Integer empid,HttpSession session) {	
			System.out.println(empid);
			System.out.println("Welcome");
			
		return new ModuleList(new ArrayList<AssignModule>(dataServices.getModule(date,empid)));
	    
	    }
	    
	    /*get employee all employee details*/
	    @ApiOperation(value = "Gets all the Employees", notes = "Retrieves all Employees details", response = Registration.class, responseContainer = "List")
	    @RequestMapping(method = RequestMethod.GET, produces = { MediaType.APPLICATION_XML_VALUE,
		    MediaType.APPLICATION_JSON_VALUE }, value = "getAllEmployees")
	    @ResponseBody
	    public EmployeeList getEmployees() {
		return new EmployeeList(new ArrayList<Registration>(dataServices.getEmployees()));
	    }
	    
	   
	    
	    @ApiOperation(value = "To get status By StatusId",notes="Method for get status by Id",response = Registration.class)
	    @RequestMapping(value = "/getEmployeeDetailByID/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public HashMap<String, String> getEmployeeDetail(@PathVariable Integer id) {
	    
		   Registration employee = dataServices.getEmployeeById(id);
		   
		   System.out.println("class");
	     return employee.EmployeeDetails();
	    }
	    
	    @ApiOperation(value = "To GET Employee ID",notes="Method for get employee Ids",response = Registration.class)
	    @RequestMapping(value = "/getEmployeeId", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public List getEmployeeID() {
	    	try{
	    List l= dataServices.getEmplyoeeIDs();
	     return l;
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return null;
	    }
	    
	    
	    @ApiOperation(value = "create team use employee detail",notes="Assign Task for our Team Employees",response=Registration.class)
	    @RequestMapping(value = "/getEmployeeIdDetail/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    public @ResponseBody
	    HashMap<String, String> empDetail1(@PathVariable Integer id) {
	    	 Registration employee = dataServices.getEmployeeById(id);
	  		return employee.EmployeeDetails(); 
		}
	    
	    
	    @ApiOperation(value = "To GET Employee ID",notes="Method for get employee Ids",response = ProjectDetail.class)
	    @RequestMapping(value = "/getprojectid", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public List getProjectID() {
	    	try{
	    List l= dataServices.getProjectIDs();
	     return l;
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return null;
	    }
	    
	    @ApiOperation(value = "To GET Employee ID",notes="Method for get employee Ids",response = ProjectDetail.class)
	    @RequestMapping(value = "/getProjectNames/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public String getProjectName(@PathVariable Integer id) {
	    	try{
	    String l= dataServices.getProjectName(id);
	     return l;
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return null;
	    }
	    
	    
	    @ApiOperation(value = "To GET Employee ID",notes="Method for get employee Ids",response = Registration.class)
	    @RequestMapping(value = "/getProjectManagerid", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public List getProjectManagerID() {
	    	try{
	    List l= dataServices.getProjectManagerIDs();
	     return l;
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return null;
	    }
	    
	    @ApiOperation(value = "To GET PM name",notes="Method for get PM name Ids",response = Registration.class)
	    @RequestMapping(value = "/getProjectManagerName/{id}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
	    @ResponseBody 
	    public String getProjectManagerName(@PathVariable Integer id) {
	    	try{
	    String l= dataServices.getProjectManagerName(id);
	     return l;
	    	}
	    	catch (Exception e) {
				System.out.println(e);
			}
	     return null;
	    }
	    
	    
}
