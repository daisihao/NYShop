package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.crypto.Mac;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.ProductService;
import edu.hgsf.nanyu.service.impl.ProductServiceImpl;
import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.ProductVO;

@WebServlet("/ShopCarServlet.do")
public class ShopCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService ps = null;
	List<ProductVO> pvolist = null;

	Map<ProductVO, Integer> pro_count = null;

	public ShopCarServlet() {
		super();


		ps = new ProductServiceImpl();
		pvolist = new ArrayList<ProductVO>();
		

	}

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

	
		String method = request.getParameter("method");
		if ("add".equals(method)) {
			doAddProduct(request, response);
		} else if ("delete".equals(method)) {
			doDeleteProduct(request, response);
		} else if ("toshopcart".equals(method)) {
			toshopcart(request, response);
		} else if ("addcount".equals(method)) {
			doAddCount(request, response);
		} else if ("reducecount".equals(method)) {
			doReduceCount(request, response);
		}

	}

	private void doReduceCount(HttpServletRequest request,
			HttpServletResponse response) {
		String strproduct_id = request.getParameter("productID");
		System.out.println("进入reduce");
		System.out.println(strproduct_id);
		ProductVO pvo = new ProductVO();
		int product_id = Integer.parseInt(strproduct_id);
		boolean flag = true;

		ProductVO temppvo = new ProductVO();
		Integer tempvalue = 1;
		for (ProductVO p : pro_count.keySet()) {
			if (p.getProductID().equals(strproduct_id)) {
				flag = false;
				temppvo = p;
				break;
			}
		}
		tempvalue = pro_count.get(temppvo);
		if (tempvalue > 1) {

			tempvalue--;
		} else {
			tempvalue = 1;
		}
		System.out.println(temppvo.getName());
		System.out.println(tempvalue);
		pro_count.put(temppvo, tempvalue);
		request.getSession().setAttribute("pro_count", pro_count);

	}

	private void doAddCount(HttpServletRequest request,
			HttpServletResponse response) {

		String strproduct_id = request.getParameter("productID");

		System.out.println(strproduct_id);
		ProductVO pvo = new ProductVO();
		int product_id = Integer.parseInt(strproduct_id);
		boolean flag = true;
		if (pro_count.isEmpty()) {
			pvo = ps.load(product_id);

			pro_count.put(pvo, 1);
		} else {
			ProductVO temppvo = new ProductVO();
			Integer tempvalue = 1;
			for (ProductVO p : pro_count.keySet()) {
				if (p.getProductID().equals(strproduct_id)) {
					flag = false;
					temppvo = p;
					break;
				}
			}
			if (!flag) {
				Integer temp = pro_count.get(temppvo);
				System.out.println(temp);
				tempvalue = temp + 1;
				pro_count.put(temppvo, tempvalue);
			}
			if (flag) {
				pvo = ps.load(product_id);

				pro_count.put(pvo, 1);
			}
		}

		request.getSession().setAttribute("pro_count", pro_count);

	}

	private void toshopcart(HttpServletRequest request,
			HttpServletResponse response) {
		if (request.getSession().getAttribute("custvo") == null
				|| "".equals(request.getSession().getAttribute("custvo"))) {
			try {
				request.getRequestDispatcher("/web/user/pleaselogin.jsp")
						.forward(request, response);
			} catch (ServletException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		} else {
			try {
				request.getRequestDispatcher("/web/product/shop_cart.jsp")
						.forward(request, response);
			} catch (ServletException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}

	}

	private void doDeleteProduct(HttpServletRequest request,
			HttpServletResponse response) {
		String strproduct_id = request.getParameter("productID");
		System.out.println("从购物车中删除产品" + strproduct_id);

		
		HashMap<ProductVO, Integer> pro_count = (HashMap<ProductVO, Integer>) request
				.getSession().getAttribute("pro_count");

		
		ProductVO tempvo = null;
		for (ProductVO pvo : pro_count.keySet()) {
			if (pvo.getProductID().equals(strproduct_id)) {
				tempvo = pvo;
			}
		}
		pro_count.remove(tempvo);

		request.getSession().setAttribute("pro_count", pro_count);
	}

	private void doAddProduct(HttpServletRequest request,
			HttpServletResponse response) {
		String strproduct_id = request.getParameter("productID");

		if (request.getSession().getAttribute("custvo") == null
				|| "".equals(request.getSession().getAttribute("custvo"))) {
			System.out.println(strproduct_id);
			ProductVO pvo = new ProductVO();
			int product_id = Integer.parseInt(strproduct_id);
			boolean flag = true;
			if (request.getSession().getAttribute("pro_count") == null
					|| "".equals(request.getSession().getAttribute("pro_count"))) {
				pro_count = new HashMap<ProductVO, Integer>();

			} else {
				pro_count = (HashMap<ProductVO, Integer>) request.getSession()
						.getAttribute("pro_count");
			}
			if (pro_count.isEmpty()) {
				pvo = ps.load(product_id);

				pro_count.put(pvo, 1);
			} else {

				ProductVO temppvo = new ProductVO();
				Integer tempvalue = 1;
				for (ProductVO p : pro_count.keySet()) {
					if (p.getProductID().equals(strproduct_id)) {
						temppvo = p;
						flag = false;
						break;
					}
				}
				if (!flag) {
					tempvalue = pro_count.get(temppvo);
					tempvalue = tempvalue + 1;
					pro_count.put(temppvo, tempvalue);
				}
				if (flag) {
					pvo = ps.load(product_id);

					pro_count.put(pvo, 1);
				}
			}
			request.getSession().setAttribute("pro_count", pro_count);
			try {
				request.getRequestDispatcher("/web/user/pleaselogin.jsp")
						.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			if (request.getSession().getAttribute("pro_count") == null
					|| "".equals(request.getSession().getAttribute("pro_count"))) {
				pro_count = new HashMap<ProductVO, Integer>();

			} else {
				pro_count = (HashMap<ProductVO, Integer>) request.getSession()
						.getAttribute("pro_count");
			}
			System.out.println(strproduct_id);
			ProductVO pvo = new ProductVO();
			int product_id = Integer.parseInt(strproduct_id);
			boolean flag = true;
			if (pro_count.isEmpty()) {
				pvo = ps.load(product_id);

				// pvolist.add(pvo);
				pro_count.put(pvo, 1);
			} else {
				ProductVO temppvo = new ProductVO();
				Integer tempvalue = 1;
				for (ProductVO p : pro_count.keySet()) {
					if (p.getProductID().equals(strproduct_id)) {
						flag = false;
						temppvo = p;
						break;
					}
				}
				if (!flag) {
					Integer temp = pro_count.get(temppvo);
					System.out.println(temp);
					tempvalue = temp + 1;
					pro_count.put(temppvo, tempvalue);
				}
				if (flag) {
					pvo = ps.load(product_id);

					pro_count.put(pvo, 1);
				}
			}

			request.getSession().setAttribute("pro_count", pro_count);
			try {
				request.getRequestDispatcher("/web/product/shop_cart.jsp")
						.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
