package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.LoginDao;

public class LoginController extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
			LoginDao ED = new LoginDao();
			
			if (ED.CheckLogin(email,password)){
				System.out.println("Created Successfully");
				return mapping.findForward("success");
			}else{
				System.out.println("Error While Creating");
			return mapping.findForward("failure");
			}
			
		
		
	}
}
