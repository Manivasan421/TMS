package controllers;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.LoadIdDao;


public class LoadIdController extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		LoadIdDao ln = new LoadIdDao();
		String name = request.getParameter("name");
		ArrayList<String> list = ln.getId(name);
		String str="";
		int i=0;
        while(i<list.size())
        {
        	if(i<list.size()-1)
        		str+=list.get(i)+",";
        	else
        		str+=list.get(i);
        	i++;
        }
		PrintWriter out = response.getWriter();
		out.print(str);
		return null;

	}
}