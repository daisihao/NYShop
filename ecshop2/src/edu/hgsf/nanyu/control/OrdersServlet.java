package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.hgsf.nanyu.service.ConsigneeService;
import edu.hgsf.nanyu.service.CustomerService;
import edu.hgsf.nanyu.service.OrderDetailService;
import edu.hgsf.nanyu.service.OrderService;
import edu.hgsf.nanyu.service.impl.ConsigneeServiceImpl;
import edu.hgsf.nanyu.service.impl.CustomerServiceImpl;
import edu.hgsf.nanyu.service.impl.OrderServiceImpl;
import edu.hgsf.nanyu.service.impl.UserOrderDetaileServiceImpl;
import edu.hgsf.nanyu.service.impl.UserOrderServiceImpl;
import edu.hgsf.nanyu.util.OrdernumUtil;
import edu.hgsf.nanyu.view.ArticleVO;
import edu.hgsf.nanyu.view.ConsigneeVO;
import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.OrderdetailVO;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.ProductVO;
import edu.hgsf.nanyu.view.SearchVO;

@WebServlet("/orders.do")
public class OrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderService os;

	public OrdersServlet() {
		os = new OrderServiceImpl();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		// http://localhost:8080/ecshop-final/emp.do?method=create&deptno=10&beginDate=1984/10/11
		if ("create".equals(method)) {
			create(request, response);
		} else if ("page".equals(method)) {
			page(request, response);
		} else if ("payover".equals(method)) {
			payover(request, response);
		} else if ("delete".equals(method)) {
			delete(request, response);
		} else if ("select".equals(method)) {
			select(request, response);
		} else if ("deletesel".equals(method)) {
			dodeletesel(request, response);
		} else if ("searchOrder".equals(method)) {
			searchOrder(request, response);
		}else if("showDetail".equals(method)){
			showDetail(request,response);
		}
	}
	private void showDetail(HttpServletRequest request,
			HttpServletResponse response) {
		String consignee_id=(String)request.getParameter("consignee_id");
		String customer_id=(String)request.getParameter("customer_id");
		String orders_num=(String)request.getParameter("orders_num");
		
		
		ConsigneeVO inputcvo=new ConsigneeVO();
		inputcvo.setConsignee_id(consignee_id);
		ConsigneeService conser=new ConsigneeServiceImpl();
		ConsigneeVO concvo=conser.findConsigneeByid(inputcvo);
		System.out.println(concvo.getAddress());
		CustomerService cusser= new CustomerServiceImpl();
		CustomerVO cusvo=cusser.searchInfo(Integer.parseInt(customer_id));
		
		OrderDetailService ordsvo= new UserOrderDetaileServiceImpl();
		List<OrderdetailVO> detailList=ordsvo.searchAll(orders_num);
		
		request.setAttribute("concvo",concvo);
		request.setAttribute("cusvo",cusvo);
		request.setAttribute("detailList",detailList);
		try {
			request.getRequestDispatcher("/admin/order/order_inquire.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void searchOrder(HttpServletRequest request,
			HttpServletResponse response) {

		String timebegin = (String) request.getParameter("timeBegin");
		String timeend = (String) request.getParameter("timeEnd");

		SearchVO svo = new SearchVO();

		svo.setBeginDate(timebegin);
		svo.setEndDate(timeend);

		// request.getSession().setAttribute("timeBegin", timebegin);
		// request.getSession().setAttribute("timeEnd", timeend);

		try {
			request.getRequestDispatcher("/admin/order/order_search.jsp")
					.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void dodeletesel(HttpServletRequest request,
			HttpServletResponse response) {
		String ordersr = request.getParameter("customer_id");
		int orders_id = Integer.parseInt(ordersr);
		boolean yes = os.deletes(orders_id);
		String beginnumber = (String) request.getAttribute("Beginnumber");
		String endnumber = (String) request.getAttribute("Endnumberr");
		SearchVO svo = new SearchVO();
		// svo.setBeginnumber(beginnumber);
		// svo.setEndnumber(endnumber);
		// 得到查询的当前页
		PageVO<OrdersVO> pvo = new PageVO<OrdersVO>();
		OrderService orderservice = new OrderServiceImpl();

		String strCurrent = request.getParameter("current");

		if ("".equals(strCurrent) || strCurrent == null) {

		} else {

			int current = Integer.parseInt(strCurrent);
			pvo.setCurrentPages(current);
		}
		int total = orderservice.total();
		pvo.setTotal(total);

		List<OrdersVO> lso = orderservice.selectList(pvo);
		pvo.setRows(lso);

		request.setAttribute("pvo", pvo);
		try {
			request.getRequestDispatcher("/admin/order/order_search.jsp")
					.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void select(HttpServletRequest request, HttpServletResponse response) {

		// int
		// beginnumber=Integer.parseInt(request.getParameter("Beginnumber"));
		// int endnumber=Integer.parseInt(request.getParameter("Eednumber"));
		String beginnumber = (String) request.getAttribute("Beginnumber");
		String endnumber = (String) request.getAttribute("Endnumberr");
		SearchVO svo = new SearchVO();
		// svo.setBeginnumber(beginnumber);
		// svo.setEndnumber(endnumber);
		// 得到查询的当前页
		PageVO<OrdersVO> pvo = new PageVO<OrdersVO>();
		OrderService orderservice = new OrderServiceImpl();

		String strCurrent = request.getParameter("current");

		if ("".equals(strCurrent) || strCurrent == null) {

		} else {

			int current = Integer.parseInt(strCurrent);
			pvo.setCurrentPages(current);
		}
		int total = orderservice.total();
		pvo.setTotal(total);

		List<OrdersVO> lso = orderservice.selectList(pvo);
		pvo.setRows(lso);

		// 调用服务层
		// PageVO<OrdersVO> ovolist=new PageVO<OrdersVO>();

		// ovolist.setCurrentPages(current);

		// ovolist=os.list(current,svo);

		// request.getSession().setAttribute("beginnumber", beginnumber);
		// request.getSession().setAttribute("endnumber", endnumber);

		// request.setAttribute("oovolist", ovolist);
		// request.setAttribute("current",current);
		request.setAttribute("pvo", pvo);
		// request.setAttribute("lso",lso);
		try {
			request.getRequestDispatcher("/admin/order/order_search.jsp")
					.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) {
		OrdersVO ovo = new OrdersVO();
		String customer_id = (String) request.getParameter("customer_id");
		ovo.setCustomer_id(customer_id);
		os.remove(ovo);
		try {
			response.sendRedirect("/ecshop2/admin/order/order_search.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void payover(HttpServletRequest request,
			HttpServletResponse response) {
		String orders_no = request.getParameter("orders_no");
		OrdersVO ordersvo = new OrdersVO();
		ordersvo.setOrders_no(orders_no);
		ordersvo.setStatus("已支付");
		OrderService uos = new UserOrderServiceImpl();
		boolean updateflag = uos.updateOrderStatus(ordersvo);
		if (updateflag) {
			try {
				request.getRequestDispatcher("/web/user/payover.jsp").forward(
						request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	}

	private void page(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取条件查询参数
		String customer_id = request.getParameter("customer_id");
		String beginDate = request.getParameter("beginDate");
		String endDate = request.getParameter("endDate");

		// 封装为查询VO
		SearchVO svo = new SearchVO(customer_id, beginDate, endDate);

		// 得到查询的当前页【第一次查询则没有current参数，要判断】
		String strCurrent = request.getParameter("current");
		if ("".equals(strCurrent) || strCurrent == null) {
			strCurrent = "1";
		}
		// 转换为数字类型
		int current = Integer.parseInt(strCurrent);
		// 调用服务方法
		PageVO<OrdersVO> pvo = os.page(current, svo);

		// 返回页面
		request.setAttribute("pvo", pvo);
		request.setAttribute("svo", svo);

		request.getRequestDispatcher("/ecshop2/admin/order/order_search.jsp")
				.forward(request, response);

	}

	private void create(HttpServletRequest request, HttpServletResponse response) {
		String customer_id = ((CustomerVO) request.getSession().getAttribute(
				"custvo")).getCustomer_id();
		String consignee_id = request.getParameter("consignee_id");
		// request.setAttribute("customer_id", customer_id);
		HashMap<ProductVO, Integer> pro_count = (HashMap<ProductVO, Integer>) request
				.getSession().getAttribute("pro_count");

		/*
		 * List<ProductVO> pvolist =
		 * (List<ProductVO>)request.getSession().getAttribute("pvolist");
		 * List<String> countlist =
		 * (List<String>)request.getSession().getAttribute("countlist");
		 * List<String> pricelist =
		 * (List<String>)request.getSession().getAttribute("pricelist");
		 */

		List<ConsigneeVO> volist = (List<ConsigneeVO>) request.getSession()
				.getAttribute("volist");
		String address = "";
		for (ConsigneeVO cvo : volist) {
			if (consignee_id.equals(cvo.getConsignee_id())) {
				address = cvo.getAddress();
			}
		}
		// address="黄冈师范学院";
		request.setAttribute("address", address);

		String orders_pay = request.getParameter("pay");
		String paytype = request.getParameter("payment");

		/*
		 * System.out.println(pay); System.out.println(payment);
		 * System.out.println(product_id); System.out.println(product_count);
		 */

		
		String orders_no = OrdernumUtil.getOrders_no();
		// System.out.println(orders_num);

		OrdersVO ordersvo = new OrdersVO();

		ordersvo.setConsignee_id(consignee_id);
		ordersvo.setCustomer_id(customer_id);
		ordersvo.setOrders_no(orders_no);
		ordersvo.setOrders_pay(orders_pay);
		ordersvo.setPaytype(paytype);
		ordersvo.setStatus("未支付");

		request.setAttribute("ordersvo", ordersvo);
		OrderService uos = new UserOrderServiceImpl();
		boolean orderflag = uos.addOrder(ordersvo);

		if (orderflag) {
			List<OrderdetailVO> odvolist = new ArrayList<OrderdetailVO>();
			OrderdetailVO odvo = null;
			for (ProductVO p : pro_count.keySet()) {
				odvo = new OrderdetailVO();
				odvo.setorders_num(orders_no);
				odvo.setProduct_count(pro_count.get(p) + "");
				odvo.setProduct_id(p.getProductID());
				odvolist.add(odvo);
			}

			// odvo.setorders_num(orders_no);
			// odvo.setProduct_count(product_count);
			// odvo.setProduct_id(product_id);
			// System.out.println(odvolist.size());
			OrderDetailService uods = new UserOrderDetaileServiceImpl();
			boolean orderdetailflag = true;
			for (OrderdetailVO o : odvolist) {
				// System.out.println(o.getProduct_id());
				orderdetailflag = orderdetailflag && uods.addOrderDetail(o);
			}

			// boolean orderdetailflag = uods.addOrderDetail(odvo);
			// System.out.println(request.getSession().getAttribute("pvolist"));
			/*
			 * List<ProductVO>
			 * pvos=(List<ProductVO>)request.getSession().getAttribute
			 * ("pvolist"); List<ProductVO> dpvos=new ArrayList<ProductVO>();
			 */
			/*
			 * for(ProductVO p:pvos){ dpvos.add(p);
			 * 
			 * } pvos.removeAll(dpvos);
			 */
			// request.setAttribute("pvolist", pvos);
			// request.getSession().removeAttribute("pvolist");

			//HashMap<ProductVO, Integer> empty = new HashMap<ProductVO, Integer>();
			//request.getSession().setAttribute("pro_count", empty);
			request.getSession().removeAttribute("pro_count");
			// System.out.println(request.getSession().getAttribute("pvolist"));
			if (orderdetailflag) {
				try {
					request.getRequestDispatcher("/web/user/pay.jsp").forward(
							request, response);
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

}
