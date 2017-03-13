package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.Product_CommentService;
import edu.hgsf.nanyu.service.impl.Product_CommentServiceImpl;
import edu.hgsf.nanyu.view.Product_commentVO;

/**
 * Servlet implementation class Product_CommentServlet
 */
@WebServlet("/Product_CommentServlet.do")
public class Product_CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Product_CommentService pcs=null;
   
    public Product_CommentServlet() {
        super();
        pcs=new Product_CommentServiceImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String strproduct_id=request.getParameter("productID");
		String strCustomer_id=request.getParameter("customer_id");
		
		String textarea=request.getParameter("textarea");
		
		
		Product_commentVO pvo1=new Product_commentVO();
		pvo1.setCustomer_id(strCustomer_id);
		pvo1.setProduct_id(strproduct_id); 
		pvo1.setComment_produte(textarea);
		
		if (pvo1.getCustomer_id() == null|| "".equals(pvo1.getCustomer_id())) {
			try {
				
				request.getRequestDispatcher("/web/user/pleaselogin.jsp").forward(
						request, response);
				
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}else{
		//调用服务层方法，插入数据
		pcs.insertProductComment(pvo1); 
		
	    request.setAttribute("pvo1", pvo1);
	    
	    request.getRequestDispatcher("/ProductServlet.do").forward(request, response);
		
	}
}
}
