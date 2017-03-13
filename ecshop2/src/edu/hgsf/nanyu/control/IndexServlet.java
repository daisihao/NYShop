package edu.hgsf.nanyu.control;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.ProductService;
import edu.hgsf.nanyu.service.impl.ProductServiceImpl;
import edu.hgsf.nanyu.util.DeleteFolder;
import edu.hgsf.nanyu.util.LuceneIndex;
import edu.hgsf.nanyu.view.ProductVO;

/**
 * Servlet implementation class IndexServlet
 * 
 * @author 游佳慧 description:用于访问产品表，在首页显示所有已经上架的产品
 */
@WebServlet("/IndexServlet.do")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService ps;
	public IndexServlet() {
		super();
		ps = new ProductServiceImpl();
		
		DeleteFolder.deleteAll(new File("/home/NY/lucene"));
		LuceneIndex.index(LuceneIndex.getResult("SELECT * FROM PRODUCT WHERE PRODUCT_UP=1"));
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		if ("showIndex".equals(method)) {
			showIndex(request, response);
		} else if ("search".equals(method)) {
			search(request, response);
		} else if ("list".equals(method)) {
			dolist(request, response);
		}
	}

	private void dolist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String product_up = "1";
		List<ProductVO> pvolist = ps.ulist(product_up);
		// System.out.println(pvolist.size());
		for (ProductVO e : pvolist) {
			if (e.getCatalogID().equals("101")
					|| e.getCatalogID().equals("104")
					|| e.getCatalogID().equals("105")
					|| e.getCatalogID().equals("106")
					|| e.getCatalogID().equals("107")
					|| e.getCatalogID().equals("120")) {
				e.setCatalogID("app");
			} else if (e.getCatalogID().equals("102")) {
				e.setCatalogID("web");
			} else if (e.getCatalogID().equals("103")) {
				e.setCatalogID("card");
			}
		}
		request.setAttribute("pvolist", pvolist);
		request.getRequestDispatcher("/web/nav/product_list.jsp").forward(
				request, response);
	}

	private void showIndex(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String product_up = "1";
		List<ProductVO> pvolist = ps.ulist(product_up);
		//System.out.println(pvolist.size());
		request.setAttribute("pvolist", pvolist);
		request.getRequestDispatcher("main.jsp").forward(request, response);
	}

	private void search(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String content = request.getParameter("search");
		List<ProductVO> showlist = new ArrayList<ProductVO>();// 返回页面产品集合
		HashMap<String, String> smap = LuceneIndex.searcher(content);
		Set<String> keySet = smap.keySet();
		for (Iterator<String> it = keySet.iterator(); it.hasNext();) {
			String name=it.next();
			System.out.println(name);
			System.out.println(89);
			ProductVO pvo = ps.search(name);
			pvo.setProfile(smap.get(name));
			showlist.add(pvo);
		}
		if (showlist.size() != 0) {
			request.setAttribute("showlist", showlist);
			request.getRequestDispatcher("/web/search/true.jsp").forward(
					request, response);
		} else {
			request.getRequestDispatcher("/web/search/false.jsp").forward(
					request, response);
		}
	}
}