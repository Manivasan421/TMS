package com.tms.dao;

import java.math.BigInteger;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import com.tms.spring4swagger.bean.AnyDayTask;
import com.tms.spring4swagger.bean.AssignModule;
import com.tms.spring4swagger.bean.Client;
import com.tms.spring4swagger.bean.createteam;
import com.tms.spring4swagger.bean.Module;
import com.tms.spring4swagger.bean.Product;
import com.tms.spring4swagger.bean.ProjectDetail;
import com.tms.spring4swagger.bean.Registration;
import com.tms.spring4swagger.bean.Registration2;
import com.tms.spring4swagger.bean.StatusList;
import com.tms.spring4swagger.bean.Task;
import com.tms.spring4swagger.bean.login;

public class TaskDaoImpl implements TaskDao {

	@Autowired
	SessionFactory sessionFactory;

	Session session = null;
	Transaction tx = null;

	@Override
	public AnyDayTask updateStatus(AnyDayTask task) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(task);
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(task);
		tx.commit();
		session.close();
		return task;

	}

	@Override
	public createteam createTeam(createteam task) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(task);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return task;

	}

	@Override
	public Registration loginvalidate(Integer emailid, String password) throws Exception {
		// TODO Auto-generated method stub

		session = sessionFactory.openSession();
		
		Registration employee = (Registration) session.load(Registration.class, new Integer(emailid));
		tx = session.getTransaction();

		session.beginTransaction();
		String password1=employee.getPassword();
		
		if(password1.equals(password)){
			return employee;
		}
		
		/*Registration l = (Registration) session.load(Registration.class, new String(email));
		  tx = session.getTransaction();
		  
		  session.beginTransaction();
		
		  tx.commit();
		  String pass=l.getPassword();
		  String role=l.getEmployeeRole();
		 
		       
		
		  if(pass.equals(password))
		  {
			return l;
			
		  }
		  return null; */ 
		
		/*List doctors = session.createCriteria(Registration.class)
			     .add( Restrictions.like("Email", email)) .list(); // the leading wild card can become a problem since it cannot be indexed by the DB!
			     .addOrder( Order.asc("lastName") )
			     .list();
		tx = session.getTransaction();
		  
		  session.beginTransaction();
		
		  tx.commit();
		 System.out.println(doctors.size());
		System.out.println(doctors.get(0));
		System.out.println(doctors.get(1));
		
		session.close();
		 return null;*/
		return null;
		
	}

	@Override
	public Module AddModule(Module e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();
		System.out.println("added successfully");
		return e;

	}

	@Override
	public Task AddTask(Task e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public Product AddProduct(Product e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public Registration register(Registration e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public AssignModule assign(AssignModule e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public ProjectDetail resource(ProjectDetail e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public Client register(Client e) throws Exception {
		// TODO Auto-generated method stub
		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(e);
		tx.commit();
		session.close();

		System.out.println("added successfully");
		return e;

	}

	@Override
	public List<AnyDayTask> getStatus(String date, Integer empid) throws Exception {

		session = sessionFactory.openSession();

		tx = session.beginTransaction();
		Criteria cr = session.createCriteria(AnyDayTask.class);

		Criterion date1 = Restrictions.like("Date", date);
		Criterion empid1 = Restrictions.like("empid", empid);
		LogicalExpression orExp = Restrictions.and(date1, empid1);
		cr.add(orExp);

		// LogicalExpression andExp = Restrictions.and(date1);

		List<AnyDayTask> l = cr.list();
		tx.commit();
		session.close();

		return l;
	}

	@Override
	public AnyDayTask getStatusById(Integer id) throws Exception {
		session = sessionFactory.openSession();

		AnyDayTask employee = (AnyDayTask) session.load(AnyDayTask.class, new Integer(id));
		tx = session.getTransaction();

		session.beginTransaction();

		tx.commit();
		System.out.println("get Status detail successfully");

		return employee;

	}

	@Override
	public boolean deleteStatusById(Integer id) throws Exception {

		session = sessionFactory.openSession();
		Object o = session.load(AnyDayTask.class, id);
		tx = session.getTransaction();
		session.beginTransaction();
		session.delete(o);
		tx.commit();
		System.out.println("deleted  successfully");
		return false;
	}

	@Override
	public List<AssignModule> getModule(String date, Integer empid) throws Exception {
		session = sessionFactory.openSession();

		tx = session.beginTransaction();
		Criteria cr = session.createCriteria(AssignModule.class);

		Criterion date1 = Restrictions.like("Date", date);
		Criterion empid1 = Restrictions.like("EmployeeId", empid);
		LogicalExpression orExp = Restrictions.and(date1, empid1);
		cr.add(orExp);
		// LogicalExpression andExp = Restrictions.and(date1);
		List<AssignModule> l = cr.list();
		tx.commit();
		session.close();
		System.out.println(l);
		return l;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Registration> getEmployees() {

		session = sessionFactory.openSession();
		tx = session.beginTransaction();
		List<Registration> employeeList = session.createCriteria(Registration.class).list();
		tx.commit();
		session.close();

		return employeeList;
	}

	@Override
	public Registration getEmployeeById(Integer id) throws Exception {
		session = sessionFactory.openSession();

		Registration employee = (Registration) session.load(Registration.class, new Integer(id));
		tx = session.getTransaction();

		session.beginTransaction();

		tx.commit();
		System.out.println("get Detail Employee successfully");
		System.out.println(employee);
		return employee;
	}

	@Override
	public List getEmployeeId() {

		session = sessionFactory.openSession();

		Criteria criteria = session.createCriteria(Registration.class);
		criteria.setProjection(Projections.property("EmployeeID"));
		tx = session.beginTransaction();
		tx.commit();

		System.out.println(criteria.list());
		return criteria.list();
	}

	@Override
	public List getProjectId() {

		session = sessionFactory.openSession();

		Criteria criteria = session.createCriteria(ProjectDetail.class);
		criteria.setProjection(Projections.property("ProjectID"));
		tx = session.beginTransaction();
		tx.commit();

		System.out.println(criteria.list());
		return criteria.list();
	}

	@Override
	public String getProjectName(Integer id) {

		session = sessionFactory.openSession();

		ProjectDetail l = (ProjectDetail) session.load(ProjectDetail.class, new Integer(id));
		tx = session.beginTransaction();
		tx.commit();
		l.getProjectName();
		return l.getProjectName();
	}

	@Override
	public List getProjectManagerId() {

		session = sessionFactory.openSession();

		Criteria criteria = session.createCriteria(Registration.class);
		List<Registration> list = criteria.add(Restrictions.eq("EmployeeRole", "Project Manager")).list();
		tx = session.beginTransaction();
		tx.commit();
		return list;
	}

	@Override
	public String getProjectManagerName(Integer id) {

		session = sessionFactory.openSession();

		Registration l = (Registration) session.load(Registration.class, new Integer(id));
		tx = session.beginTransaction();
		tx.commit();
		System.out.println(l.getEmployeeName());
		return l.getEmployeeName();
	}

}
