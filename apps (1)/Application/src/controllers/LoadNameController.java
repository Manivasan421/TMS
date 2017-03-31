package controllers;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bean.LoadNameBean;
import dao.LoadNameDao;


public class LoadNameController extends Action{
	 public ActionForward execute(ActionMapping mapping, ActionForm form,
	            HttpServletRequest request, HttpServletResponse response)
	            throws Exception 
	    {
		 
	        LoadNameDao ln=new LoadNameDao();
	        String month=request.getParameter("monthname");
	        ArrayList<String> list=ln.getNames(month);
	        int i=0;
	        String names="";
	        while(i<list.size())
	        {
	        	if(i<list.size()-1)
	        		names+=list.get(i)+",";
	        	else
	        		names+=list.get(i);
	        	i++;
	        }
	        
	        PrintWriter out=response.getWriter();
	        out.print(names);
	            return null;
	        
	    }
}