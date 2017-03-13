package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.view.ProductVO;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/web/user/Test.do")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		System.out.println("成功跳转到test.do");
		// String cartTotalPrice = request.getParameter("cartTotalPrice");
		// System.out.println(cartTotalPrice);
		//List<ProductVO> pvolist = (List<ProductVO>) request.getSession().getAttribute("pvolist");
		HashMap<ProductVO, Integer> pro_count=(HashMap<ProductVO, Integer>)request.getSession().getAttribute("pro_count");
		// System.out.println(pvolist.size());
		if (pro_count == null || pro_count.isEmpty()) {
			request.setAttribute("message",
					" <script type='text/javascript'> alert('购物车中尚无商品!请向购物车中添加商品后再结算！') </script>");
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
		} else {
			int i = 0;
			double dTotalprice = 0;
			for(ProductVO p:pro_count.keySet()){
				dTotalprice=dTotalprice+Double.parseDouble(p.getPrice())*pro_count.get(p);
			}
			/*List<String> countlist = new ArrayList<String>();
			List<String> pricelist = new ArrayList<String>();
			String count = null;
			String price = null;
			double dPrice = 0;
			double dTotalprice = 0;
			if (pvolist != null) {
				for (ProductVO p : pvolist) {
					// System.out.println(p.getProductID());
					count = new String();
					price = new String();
					count = request.getParameter("count" + i);
					// System.out.println(p.getPrice());
					dPrice = Integer.parseInt(count)
							* Double.parseDouble(p.getPrice());
					dTotalprice = dTotalprice + dPrice;
					price = dPrice + "";
					countlist.add(count);
					pricelist.add(price);
					i++;

				}
			}*/
			/*
			 * for (String s : countlist) { System.out.println(s);
			 * System.out.println(countlist.get(0));
			 * System.out.println(countlist.get(1));
			 * System.out.println(countlist.get(2)); } for (String s :
			 * pricelist) { System.out.println(s); }
			 */
			System.out.println(dTotalprice);
			String totalPrice = dTotalprice + "";
			//request.getSession().setAttribute("countlist", countlist);

			//request.getSession().setAttribute("pricelist", pricelist);
			request.getSession().setAttribute("totalPrice", totalPrice);
			request.getRequestDispatcher("/web/user/consignee.do?method=find")
					.forward(request, response);

		}
	}

}
