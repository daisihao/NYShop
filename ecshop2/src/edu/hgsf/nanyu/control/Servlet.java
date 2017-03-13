package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import edu.hgsf.nanyu.service.CustomerService;
import edu.hgsf.nanyu.service.impl.CustomerServiceImpl;
import edu.hgsf.nanyu.view.CustomerVO;


/**
 * Servlet implementation class Cs_loginServlet
 */
@WebServlet("/Servlet.do")
public class Servlet extends HttpServlet {
	   private static final long serialVersionUID = 1L;
       private CustomerService cs;
 
    public Servlet() {
    	cs=new CustomerServiceImpl();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String aalog=request.getParameter("method");
		if(aalog.equals("longin")){
			dologin(request, response);
		}else if (aalog.equals("regsach")) {
			Regverify(request,response);
		}else if(aalog.equals("reg")){
			Reg(request, response);
		}else if(aalog.equals("retpwdcoust")){
			doretpwdcoust(request, response);
		}else if(aalog.equals("retyan")){
			doretyanpwd(request,response);
			
		}else if(aalog.equals("newpwdxiu")){
			donewpwdxiu(request,response);
		}else if(aalog.equals("cutsrlongin")){
			docutsrlongin(request,response);
		}
		
	}
private void docutsrlongin(HttpServletRequest request,
			HttpServletResponse response) {
	CustomerVO cvo=new CustomerVO();

	String rty=request.getParameter("username");

	cvo.setAccount(rty);
	
	boolean boo=cs.regverify(cvo);
	System.out.println(boo);
	if (!boo) {
		try {
	
		PrintWriter pw=response.getWriter();
		String ss1=JSON.toJSONString(1);
				pw.println(ss1);
				pw.flush();
				System.out.println(ss1);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		}			
	}

	}


//修改密码第三步，重新设置密码
    private void donewpwdxiu(HttpServletRequest request,
			                 HttpServletResponse response) throws IOException, ServletException {
    	
    	String newpwd=request.getParameter("cs_tfield1");
    	String newpwd2=request.getParameter("cs_tfield2");
    	//判断密码是否为空//判断两次输入是否一致
    	if(("".equals(newpwd)||newpwd==null)&&newpwd.equals(newpwd2)){
    		response.sendRedirect("/ecshop2/web/user/retrievepassword3.jsp");
    	}
    	//获得用户信息
    	CustomerVO xcvo=(CustomerVO)request.getSession().getAttribute("xcvo");
    	//调用服务修改密码
    	boolean newpwrrd=cs.xiuserpwd(xcvo.getAccount(),newpwd);
    	if(newpwrrd){
    	
    		response.sendRedirect("/ecshop2/web/user/retrievepassword4.jsp");
    	}else{
    		    String magss="修改失败！";
			    request.setAttribute("magss", magss);
				request.getRequestDispatcher("web/user/retrievepassword3.jsp").forward(request, response);
    	}
	
		
	}


//修改密码第二步 验证密保问题
	private void doretyanpwd(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String pwdrans=request.getParameter("cs_textfield2");
		if("".equals(pwdrans)||pwdrans==null){
			response.sendRedirect("/ecshop2/web/user/retrievepassword2.jsp");
		}
		CustomerVO xcvo=(CustomerVO)request.getSession().getAttribute("xcvo");
		String pwdnans=xcvo.getPwd_ans();
		if(pwdnans.equals(pwdrans)){
			
			response.sendRedirect("/ecshop2/web/user/retrievepassword3.jsp");
		}else {
			response.sendRedirect("/ecshop2/web/user/retrievepassword2.jsp");
		}
	
		
	}


	//修改密码第一步查询账户
	private void doretpwdcoust(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取页面信息
		   String xaccount=request.getParameter("textfield");
		   //判断输入是否为空
		   if("".equals(xaccount)||xaccount==null){
			   response.sendRedirect("/ecshop2/web/user/retrievepassword1.jsp");
		   }
		   CustomerVO xcvo=new CustomerVO();
		   //调用服务层
		   xcvo=cs.retpwdcut(xaccount);
		
		   if(xcvo==null){
			    String magss="无效用户名！";
			    request.setAttribute("magss", magss);
				request.getRequestDispatcher("web/user/retrievepassword1.jsp").forward(request, response);
			   
		   }else{
			    request.getSession().setAttribute("xcvo",xcvo );
				request.getRequestDispatcher("/web/user/retrievepassword2.jsp").forward(request, response); 
		   }  
	}


	private void Regverify(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		CustomerVO cvo=new CustomerVO();
		String rty=request.getParameter("cs_regsiter_content_nei_table_td_tfcuut");
		cvo.setAccount(rty);
		boolean boo=cs.regverify(cvo);
		if (boo) {
			try {
		
			PrintWriter pw=response.getWriter();
			String s=JSON.toJSONString(1);
			
					pw.println(s);
					pw.flush();
					
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();	
			}			
		}
	}
	private void Reg(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		CustomerVO cvo=new CustomerVO();
		cvo.setAccount(request.getParameter("cs_regsiter_content_nei_table_td_tfcuut"));
		cvo.setPwd(request.getParameter("cs_regsiter_content_nei_table_td_tf2"));
		cvo.setPwd_ques(request.getParameter("cs_regsiter_content_table_td_tf4r"));
		cvo.setPwd_ans(request.getParameter("cs_regsiter_content_nei_table_td_tf5"));
		cvo.setEmail(request.getParameter("email"));
	   //System.out.println(cvo.getAccount()+" "+cvo.getPwd()+" "+cvo.getPwd_ques()+" "+cvo.getPwd_ans());
	   boolean chave=cs.reg(cvo);
	   	System.out.println(chave);
		if (!chave) {
				
				PrintWriter pw=response.getWriter();
				//pw.println("<script type='text/javascript'>alert('注册失败,请重新注册')</script>");
				pw.flush();
				pw.close();
				request.getRequestDispatcher("/web/user/register.jsp").forward(request, response);
			
		}else {
				//request.getRequestDispatcher("/web/user/login.jsp").forward(request, response);
			      response.sendRedirect("/ecshop2/web/user/login.jsp");
				
			
		}
	}

     //登录用户
	private void dologin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//获取页面数据
		String username=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		
		String yzm=(String)request.getSession().getAttribute("randomCode");
		
		String yzmwt=request.getParameter("yzmwt");
		boolean quer=yzm.equals(yzmwt);
		if(("".equals(username)|| username==null)||("".equals(pwd)||pwd==null)){
			response.sendRedirect("/ecshop2/web/user/login.jsp");
		}
		//调用服务层
		
		CustomerVO custvo= cs.userlogin(username,pwd);
	
	
		if(custvo!=null&&quer){
			
			request.getSession().setAttribute("custvo", custvo);
			request.getRequestDispatcher("/index.jsp").forward(request, response);

		}else{
			response.sendRedirect("/ecshop2/web/user/login.jsp");
			
		}

		
	}

}
