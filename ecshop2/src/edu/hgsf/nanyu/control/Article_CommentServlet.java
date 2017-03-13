package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.ArticleService;
import edu.hgsf.nanyu.service.Article_CommentService;
import edu.hgsf.nanyu.service.impl.ArticleServiceImpl;
import edu.hgsf.nanyu.service.impl.Article_CommentServiceImpl;
import edu.hgsf.nanyu.view.ArticleVO;
import edu.hgsf.nanyu.view.Article_CommentVO;
import edu.hgsf.nanyu.view.PageVO;

@WebServlet("/Article_CommentServlet.do")
public class Article_CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Article_CommentService acs = null;
	ArticleService as=null;
	public Article_CommentServlet() {
		super();
		as=new ArticleServiceImpl();
		acs = new Article_CommentServiceImpl();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String action = request.getParameter("method");
		if (action.equals("commenttwo")) {
			commenttwo(request, response);
		}else if(action.equals("searchComment")){
			searchComment(request,response);
		}

	}


	private void commenttwo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//插入评论
		Article_CommentVO voOne = new Article_CommentVO();
		

		if (request.getSession().getAttribute("custvo") == null
				|| "".equals(request.getSession().getAttribute("custvo"))) {
			try {
				request.getRequestDispatcher("/web/user/login.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {


			String ID = request.getParameter("ID");
			voOne.setID(ID);

			String customer_id = request.getParameter("customer_id");
			voOne.setCustomer_id(customer_id);
			String article_comment_content = request.getParameter("comment");
			voOne.setArticle_comment_content(article_comment_content);
			// 调用服务层
			acs.insertComment(voOne);
			request.getRequestDispatcher("/web/news/searchArticle.jsp").forward(request, response);
			
		}
	}
	
	private void searchComment(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Article_CommentVO voTwo = new Article_CommentVO();//查询评论
		
		String ID = request.getParameter("ID");
		voTwo.setID(ID);

		/*String customer_id = request.getParameter("customer_id");
		voTwo.setCustomer_id(customer_id);*/
		
		String strCurrent=request.getParameter("current");
		if(strCurrent==null||"".equals(strCurrent)){
			strCurrent="1";
		}
		int current=Integer.parseInt(strCurrent);
		
		PageVO<Article_CommentVO> pacvo = acs.searchCommentPage(current, voTwo);
		/*request.setAttribute("pacvo", pacvo);

		request.getRequestDispatcher("/web/news/searchArticle.jsp").forward(request, response);*/
		
		
		PrintWriter pw=response.getWriter();
		
		pw.print("<table>");
		for(Article_CommentVO acvo:pacvo.getRows()){
		    String id= acvo.getID();
		    String c_id=acvo.getCustomer_id();
		    String a_content=acvo.getArticle_comment_content();
		    String a_commentTime=acvo.getArticle_comment_time();
		
		    pw.print("<tr><td>"+c_id+"</td></tr><tr><td>"+a_content+"</td><td>"+a_commentTime+"</td></tr>");
		    pw.print("<tr><td>");
		    if(pacvo.getCurrentPages()>1){
		    	pw.print("<a href='/ecshop2/Article_CommentServlet.do?method=searchComment&ID="+id+"'>首页</a>");
		    	pw.print("<a href='/ecshop2/Article_CommentServlet.do?method=searchComment&ID="+id+"&current="+pacvo.getCurrentPages()+1+"'>上一页</a>");
		    }
		    if(pacvo.getCurrentPages()<pacvo.getTotalPages()){
		    	pw.print("<a href='/ecshop2/Article_CommentServlet.do?method=searchComment&ID="+id+"&current="+"'>下一页</a>");
		    	pw.print("<a href='/ecshop2/Article_CommentServlet.do?method=searchComment&ID="+id+"'>尾页</a>");
		    }
//            if(pacvo.getCurrentPages()==pacvo.getTotalPages()){
//		    }
		}
		pw.print("</td></tr>总"+pacvo.getTotalPages()+"页");
		pw.print("</table>");
		pw.flush();
		pw.close();
	
	}

}
