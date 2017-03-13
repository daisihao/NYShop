package edu.hgsf.nanyu.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.AdminLoginService;
import edu.hgsf.nanyu.service.impl.AdminLoginServiceImpl;
import edu.hgsf.nanyu.view.AdminVO;

@WebServlet("/AdminLoginServlet.do")
public class AdminLoginServlet extends HttpServlet {
	AdminLoginService als=null;
	private static final long serialVersionUID = 1L;

    public AdminLoginServlet() {
        super();
        als=new AdminLoginServiceImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    String name=request.getParameter("name");
	    String pwd=request.getParameter("pwd");
	    //String adminname=request.getSession().getAttribute("adminname");
	    //if("".equals(adminname)||adminname==null){
	    //boolean b=false;
	    AdminVO avo =als.adminLogin(name, pwd);
	    if(avo!=null){
	    	  String randomCode=(String)request.getSession().getAttribute("randomCode");
	    	  String input=request.getParameter("Captcha");
	    	 if(randomCode.equals(input)){
	    			request.getSession().setAttribute("adminID", avo.getAdminID());
	    			request.getSession().setAttribute("adminname", avo.getUserName());
	    			//request.getSession().setAttribute("advo", avo);
	    			request.getRequestDispatcher("admin/index1.jsp").forward(request, response);
	    	   }else{
	    			response.sendRedirect("admin/login.jsp");
	    	   }
	    }else{
	    	response.sendRedirect("admin/login.jsp");
	    }
	 }
}

