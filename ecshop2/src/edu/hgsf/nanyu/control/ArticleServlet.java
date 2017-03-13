package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import edu.hgsf.nanyu.service.ArticleService;
import edu.hgsf.nanyu.service.Article_CommentService;
import edu.hgsf.nanyu.service.impl.ArticleServiceImpl;
import edu.hgsf.nanyu.service.impl.Article_CommentServiceImpl;
import edu.hgsf.nanyu.view.AdminVO;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.ArticleVO;
import edu.hgsf.nanyu.view.Article_CommentVO;
import edu.hgsf.nanyu.view.PageVO;

@WebServlet("/ArticleServlet.do")
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArticleService as = null;
	Article_CommentService acs=null;

	public ArticleServlet() {
		super();
		as = new ArticleServiceImpl();
		acs=new Article_CommentServiceImpl();
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
		if (action.equals("search")) {
			search(request, response);
		} else if (action.equals("comment")) {
			comment(request, response);
		} else if (action.equals("searchArticle")) {
			searchArticle(request, response);
		} else if (action.equals("insertArticle")) {
			insertArticle(request, response);
		} else if (action.equals("deleteArticle")) {
			deleteArticle(request, response);
		} else if (action.equals("updateArticle")) {
			updateArticle(request, response);
		} else if (action.equals("searchAllArticle")) {
			searchAllArticle(request, response);
		} else if (action.equals("showContent")) {
			showContent(request, response);
		} else if (action.equals("searchArticles_web")) {
			searchArticles_web(request, response);
		} else if (action.equals("searchArticle_web")) {
			searchArticle_web(request, response);
		} else if(action.equals("commentTwo")){
			commentTwo(request,response);
		}else if(action.equals("searchComment")){
			searchComment(request,response);
		}else if (action.equals("loadArticle")) {
			loadArticle(request, response);
		}

	}

	// 加载数据库的文章到文本编辑器中
	private void loadArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		response.setContentType("text/json;charset=utf-8");
		String article_id = request.getParameter("article_id");
		ArticleVO avo = new ArticleVO();
		avo.setID(article_id);
		ArticleVO avo1 = as.showContent(avo);
		String article_title = avo1.getTitle();
		String article_author = avo1.getAuthor();
		String article_content = avo1.getContent();
		if (article_title==null) {
			article_title="";
		}
		if (article_author==null) {
			article_author="";
		}
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("article_id", article_id);
		map.put("article_title", article_title);
		map.put("article_author", article_author);
		map.put("article_content", article_content);
		String json=JSON.toJSONString(map);
		try {
			response.getWriter().print(
					json
					/*"article_id:%" + article_id + ",%article_title:%"
							+ article_title + ",%article_author:%"
							+ article_author + ",%article_content:%"
							+ article_content*/);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void showContent(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArticleVO avo1 = new ArticleVO();
		String article_id = (String) request.getParameter("article_id");
		avo1.setID(article_id);
		ArticleVO avo = new ArticleVO();
		avo = as.showContent(avo1);
		request.setAttribute("avo", avo);
		try {
			request.getRequestDispatcher("/admin/essay/articleContent.jsp")
					.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 后台显示全部文章
	private void searchAllArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		response.setContentType("text/json;charset=utf-8");
		ArticlePageVO apvo1=new ArticlePageVO();
		int current =Integer.parseInt(request.getParameter("current"));
		int pageSize=Integer.parseInt(request.getParameter("pageSize"));
		apvo1.setCurrent(current);
		apvo1.setPageSize(pageSize);
		ArticlePageVO apvo = new ArticlePageVO();
		apvo = as.searchArticles(apvo1);
		apvo.setCurrent(current);
		apvo.setPageSize(pageSize);
		AdminVO adminvo=new AdminVO();

		String string = "<tr><th>文章编号</th><th>文章标题</th><th>文章作者</th><th>修改时间</th><th>管理员</th><th>操作</th></tr>";
		for (ArticleVO avo : apvo.getData()) {
			String title = avo.getTitle();
			String author = avo.getAuthor();
			String adminID=avo.getAdminID();
			adminvo.setAdminID(adminID);
			String username=as.findAdminName(adminvo).getUserName();
			if (title == null) {
				title = "";
			}
			if (author == null) {
				author = "";
			}
			String s = "<tr><td align='center'>"
					+ avo.getID()
					+ "</td><td align='center'>"
					+ title
					+ "</td><td align='center'>"
					+ author
					+ "</td><td align='center'>"
					+ avo.getDate()
					+ "</td><td align='center'>"
					+ username
					+ "</td><td align='center'><a href='/ecshop2/ArticleServlet.do?method=showContent&article_id="
					+ avo.getID()
					+ "'>查看</a>&nbsp;&nbsp;<a href='/ecshop2/ArticleServlet.do?method=deleteArticle&article_id="
					+ avo.getID()
					+ "'>删除</a>&nbsp;&nbsp;<a href='/ecshop2/admin/essay/articleInsert.jsp' >新增</a>&nbsp;&nbsp;<a href='/ecshop2/admin/essay/articleUpdate.jsp?article_id="
					+ avo.getID() + "'>修改</a></td></tr>";
			string = string + s;
		}
		String stringArticle="<table border='1' width='100%' align='center'>" + string
				+ "</table>";
		Map<String, Object> articleMap=new HashMap<String, Object>();
		articleMap.put("current", current);
		articleMap.put("totalPage", apvo.getTotalPage());
		articleMap.put("articlelist", stringArticle);
		String json=JSON.toJSONString(articleMap);
		try {
			PrintWriter pw = response.getWriter();
			pw.print(json);
			pw.flush();
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void updateArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArticleVO avo = new ArticleVO();
		String article_id = (String) request.getParameter("article_id");
		String admin_id = (String) request.getSession().getAttribute("adminID");
		String article_title = (String) request.getParameter("article_title");
		String article_author = (String) request.getParameter("article_author");
		String article_content = (String) request.getParameter("article_content");
		if (admin_id==null) {
			admin_id="5";
		}
		avo.setID(article_id);
		avo.setAdminID(admin_id);
		avo.setTitle(article_title);
		avo.setAuthor(article_author);
		avo.setContent(article_content);
		as.updateArticle(avo);
		try {
			response.sendRedirect("/ecshop2/admin/essay/Article.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void deleteArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArticleVO avo = new ArticleVO();
		String article_id = (String) request.getParameter("article_id");
		avo.setID(article_id);
		as.deleteArticle(avo);
		try {
			response.sendRedirect("/ecshop2/admin/essay/Article.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void insertArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArticleVO avo = new ArticleVO();
		String admin_id = (String) request.getSession().getAttribute("adminID");
		String article_title = (String) request.getParameter("article_title");
		String article_author = (String) request.getParameter("article_author");
		String article_content = (String) request.getParameter("article_content");
		if (admin_id==null) {
			admin_id="5";
		}
		avo.setAdminID(admin_id);
		avo.setTitle(article_title);
		avo.setAuthor(article_author);
		avo.setContent(article_content);
		as.insertArticle(avo);
		try {
			response.sendRedirect("/ecshop2/admin/essay/Article.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 后台根据文章标题搜索文章
	private void searchArticle(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		ArticleVO avo1 = new ArticleVO();
		String article_title = (String) request.getParameter("article_title");
		avo1.setTitle(article_title);
		ArticlePageVO apvo = new ArticlePageVO();
		apvo = as.searchArticles(avo1);
		AdminVO adminvo=new AdminVO();
		String string = "<tr><th>文章编号</th><th>文章标题</th><th>文章作者</th><th>修改时间</th><th>管理员</th><th>操作</th></tr>";
		for (ArticleVO avo : apvo.getData()) {
			String title = avo.getTitle();
			String author = avo.getAuthor();
			String adminID=avo.getAdminID();
			adminvo.setAdminID(adminID);
			String username=as.findAdminName(adminvo).getUserName();
			if (title == null) {
				title = "";
			}
			if (author == null) {
				author = "";
			}
			String s = "<tr><td align='center'>"
					+ avo.getID()
					+ "</td><td align='center'>"
					+ title
					+ "</td><td align='center'>"
					+ author
					+ "</td><td align='center'>"
					+ avo.getDate()
					+ "</td><td align='center'>"
					+ username
					+ "</td><td align='center'><a href='/ecshop2/ArticleServlet.do?method=showContent&article_id="
					+ avo.getID()
					+ "'>查看</a>&nbsp;&nbsp;<a href='/ecshop2/ArticleServlet.do?method=deleteArticle&article_id="
					+ avo.getID()
					+ "'>删除</a>&nbsp;&nbsp;<a href='/ecshop2/admin/essay/articleInsert.jsp' >新增</a>&nbsp;&nbsp;<a href='/ecshop2/admin/essay/articleUpdate.jsp?article_id="
					+ avo.getID() + "'>修改</a></td></tr>";
			string = string + s;
		}
		try {
			PrintWriter pw = response.getWriter();
			pw.print("<table border='1' width='100%' align='center'>" + string
					+ "</table>");
			pw.flush();
			pw.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 搜索文章
	private void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		ArticleVO vo = new ArticleVO();
		//PageVO<Article_CommentVO> pacvo=null;
		
		String ID = request.getParameter("ID");
		vo.setID(ID);
		
		HttpSession session = request.getSession(); 
		session.setAttribute("ID", ID);
		// 调用服务层
		ArticleVO avo = as.searchArticle(vo);
		
		PrintWriter pw=response.getWriter();
		pw.print(avo.getContent());
		/*request.setAttribute("avo", avo);
		request.getRequestDispatcher("/web/news/searchArticle.jsp").forward(request, response);*/
	}
		// 发表评论
		private void comment(HttpServletRequest request,
				HttpServletResponse response) {

			ArticleVO vo = new ArticleVO();
			String comment = request.getParameter("comment");
			vo.setComment(comment);
			String ID = request.getParameter("ID");
			vo.setID(ID);

			// 调用服务层
			as.saveComment(vo);

		}

		// 前台搜索所有文章
		private void searchArticles_web(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			ArticlePageVO apvo = new ArticlePageVO();
			apvo = as.searchArticles_web();
			request.setAttribute("apvo", apvo);

			request.getRequestDispatcher("/web/news/news.jsp").forward(request,
					response);
		}

		// 前台根据标题搜索对应文章
		private void searchArticle_web(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			ArticleVO avo1 = new ArticleVO();
			String article_title = request.getParameter("title");
			avo1.setTitle(article_title);
			ArticlePageVO apvo = new ArticlePageVO();
			apvo = as.searchArticles(avo1);

			request.setAttribute("apvo", apvo);
			request.getRequestDispatcher("/web/news/searchArticle.jsp").forward(request, response);
		}
		
		private void commentTwo(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException {
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

				Object aID = request.getSession().getAttribute("ID");
				voOne.setID((String)aID);
				/*String ID = request.getParameter("ID");
				voOne.setID((String)ID);*/
                
				String customer_id = request.getParameter("customer_id");
				voOne.setCustomer_id(customer_id);
				String article_comment_content = request.getParameter("comment");
				voOne.setArticle_comment_content(article_comment_content);
				// 调用服务层
				acs.insertComment(voOne);
				
				PrintWriter pw=response.getWriter();				
				request.getRequestDispatcher("/web/news/searchArticle.jsp").forward(request, response);
				
			}
			
		}
		
		private void searchComment(HttpServletRequest request,
				HttpServletResponse response) throws IOException {
			// TODO Auto-generated method stub
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			ArticleVO vo = new ArticleVO();
			PageVO<Article_CommentVO> pacvo=null;
			
			
			String ID = request.getParameter("ID");
			vo.setID(ID);
			// 调用服务层
			ArticleVO avo = as.searchArticle(vo);
			
			//根据用户ID查询评论
			Article_CommentVO voTwo = new Article_CommentVO();
			voTwo.setID(ID);			
			String strCurrent=request.getParameter("currentPages");
			if(strCurrent==null||"".equals(strCurrent)){
				strCurrent="1";
			}
			int current=Integer.parseInt(strCurrent);
			
			pacvo = acs.searchCommentPage(current, voTwo);
			
			//request.setAttribute("ID", ID);
			request.setAttribute("avo", avo);

			// 显示文章内容和评论
	        PrintWriter pw=response.getWriter();
	   
	        String string="<tr align='left'><th>用户ID</th><th>用户评论内容</th><th>评论时间</th></tr>";
	        pw.print("<table>"+string);
	        for(Article_CommentVO acvo:pacvo.getRows()){
	        	
	        	pw.print("<tr><td>"+acvo.getCustomer_id()+"</td><td>"+acvo.getArticle_comment_content()+"</td><td>"+acvo.getArticle_comment_time()+"</td></tr>");
	        	
	        	pw.print("<tr><td>");
	        }
	        
	        if (pacvo.getCurrentPages() > 1) {
				pw.println("<a href='javascript:return void(0)' onclick='tonext3("
						+ pacvo.getCurrentPages()
						+ ","
						+ pacvo.getTotalPages()
						+ ","
						+ ID + ")'>首页</a>");
				pw.println("<a href='javascript:return void(0)' onclick='tonext1("
						+ pacvo.getCurrentPages()
						+ ","
						+ pacvo.getTotalPages()
						+ ","
						+ ID + ")'>上一页</a>");
			}
			if (pacvo.getCurrentPages() == 1) {
				pw.println("首页");
				pw.println("上一页");
			}
			if (pacvo.getCurrentPages() == pacvo.getTotalPages()) {
				pw.println("下一页");
				pw.println("末页");
			}
			if (pacvo.getCurrentPages() < pacvo.getTotalPages()) {

				pw.println("<a href='javascript:return void(0)' onclick='tonext("+ pacvo.getCurrentPages()
						+ ","
						+ pacvo.getTotalPages()
						+ ","
						+ ID + ")'>下一页</a>");
				pw.println("<a href='javascript:return void(0)' onclick='tonext2("+ pacvo.getCurrentPages()
						+ ","
						+ pacvo.getTotalPages()
						+ ","
						+ ID + ")'>末页</a>");

			}
			pw.println("第" + pacvo.getCurrentPages() + "页");
			pw.println("总" + pacvo.getTotalPages() + "页");
	        
	        pw.print("</table>");
	      
	        pw.flush();
	        pw.close();	        
		}

}
