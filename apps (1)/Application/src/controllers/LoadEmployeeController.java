package controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import bean.loadvalues;
import dao.CreateEmployeeDao;

public class LoadEmployeeController extends DispatchAction {

	public ActionForward Create(ActionMapping mapping, ActionForm arg1, HttpServletRequest request,
			HttpServletResponse arg3) throws Exception {

		loadvalues l = (loadvalues) arg1;
		String a = l.getMonth();
		String b = l.getEname();
		String c = l.getEmail();
		String d = l.getDepartment();
		String e = l.getMobile();
		CreateEmployeeDao ED = new CreateEmployeeDao();

		if (ED.Create(a, b, c, d, e)) {
			System.out.println("Created Successfully");
			return mapping.findForward("success");
		} else {
			System.out.println("Error While Creating");
			return mapping.findForward("success");
		}
	}

	public ActionForward Update(ActionMapping mapping, ActionForm arg1, HttpServletRequest request,
			HttpServletResponse arg3) throws Exception {

		loadvalues l = (loadvalues) arg1;
		String a = l.getMonth();
		String b = l.getEnames();
		String c = l.getEmail();
		String d = l.getDepartment();
		String e = l.getMobile();
		CreateEmployeeDao ED = new CreateEmployeeDao();

		if (ED.Update(a, b, c, d, e)) {
			System.out.println("Updated Successfully");
			return mapping.findForward("success");
		} else {
			System.out.println("Error While Updaing");
			return mapping.findForward("success");
		}
	}

	public ActionForward Delete(ActionMapping mapping, ActionForm arg1, HttpServletRequest request,
			HttpServletResponse arg3) throws Exception {

		loadvalues l = (loadvalues) arg1;

		String b = l.getEnames();

		CreateEmployeeDao ED = new CreateEmployeeDao();

		if (ED.Delete(b)) {
			System.out.println("Deleted Successfully");
			return mapping.findForward("success");
		} else {
			System.out.println("Error While Deleting");
			return mapping.findForward("success");
		}
	}
}
