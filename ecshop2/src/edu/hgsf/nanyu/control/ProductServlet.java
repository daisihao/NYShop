package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.CustomerService;
import edu.hgsf.nanyu.service.ProductService;
import edu.hgsf.nanyu.service.Product_CommentService;
import edu.hgsf.nanyu.service.impl.CustomerServiceImpl;
import edu.hgsf.nanyu.service.impl.ProductServiceImpl;
import edu.hgsf.nanyu.service.impl.Product_CommentServiceImpl;
import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.ProductVO;
import edu.hgsf.nanyu.view.Product_Comment_SearchVO;
import edu.hgsf.nanyu.view.Product_commentVO;

@WebServlet("/ProductServlet.do")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       ProductService ps=null;
       Product_CommentService pcs=null;
       //CustomerService cs=null;
    public ProductServlet() {
        super();
        ps=new ProductServiceImpl();
        pcs=new Product_CommentServiceImpl();
        //cs=new CustomerServiceImpl();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
	
			    //显示商品详情页
				String strproduct_id=request.getParameter("productID");
				int product_id=Integer.parseInt(strproduct_id);
				ProductVO pvo=new ProductVO();
				pvo=ps.load(product_id); 
				//pvo=ps.load(2); 
				request.setAttribute("pvo", pvo);
				System.out.println(pvo.getTitle());
				
				//分页
				String strCurrent=request.getParameter("current");
				if("".equals(strCurrent)||strCurrent==null){
					strCurrent="1";
				}
				int currentPage=Integer.parseInt(strCurrent);
				PageVO<Product_Comment_SearchVO> ppo = pcs.page(currentPage,product_id);
				System.out.println(ppo.getTotal());
				request.setAttribute("ppo", ppo);

				request.getRequestDispatcher("/web/product/product_detail.jsp").forward(request, response);
		 }
}

