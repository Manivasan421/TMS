package main.java;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import org.apache.struts.actions.DispatchAction;



public class AddProject extends DispatchAction {
	
	public ActionForward Create(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		ProjectBo customerBo =
			 	  (ProjectBo) getWebApplicationContext();

				ProjectForm projectForm = (ProjectForm)form;
				ProjectResource project = new ProjectResource();

				//copy customerform to model
				BeanUtils.copyProperties(project, projectForm);

				//save it
				customerBo.addProject(project);

				return mapping.findForward("success");

			  }
		
	private Object getWebApplicationContext() {
		// TODO Auto-generated method stub
		return null;
	}

	

	public ActionForward Update(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ProjectBo customerBo =
			 	  (ProjectBo) getWebApplicationContext();

				ProjectForm projectForm = (ProjectForm)form;
				ProjectResource project = new ProjectResource();

				//copy customerform to model
				BeanUtils.copyProperties(project, projectForm);

				//save it
				customerBo.addProject(project);

				return mapping.findForward("success");
	

	}

	public ActionForward Delete(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ProjectBo customerBo =
			 	  (ProjectBo) getWebApplicationContext();

				ProjectForm projectForm = (ProjectForm)form;
				ProjectResource project = new ProjectResource();

				//copy customerform to model
				BeanUtils.copyProperties(project, projectForm);

				//save it
				customerBo.addProject(project);

				return mapping.findForward("success");
		

	}

}
