package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import edu.hgsf.nanyu.service.ConsigneeService;
import edu.hgsf.nanyu.service.CustomerService;
import edu.hgsf.nanyu.service.OrderService;
import edu.hgsf.nanyu.service.impl.ConsigneeServiceImpl;
import edu.hgsf.nanyu.service.impl.CustomerServiceImpl;
import edu.hgsf.nanyu.service.impl.OrderServiceImpl;
import edu.hgsf.nanyu.util.Email;
import edu.hgsf.nanyu.view.ConsigneeVO;
import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;
import edu.hgsf.nanyu.view.UserWelVO;

/*
 * 处理来之用户后台的请求
 * 001--通过用户id查询用户的积分和订单总数
 * 002--通过用户id查询用户的详细信息
 * 003--通过用户id查询用户的所有订单
 * 004--通过用户id查询用户的收货地址
 * 005--通过用户id,订单时间和订单状态查询订单，实现分页功能
 * 006--通过用户id更改个人信息
 * 007--通过用户id，订单号删除指定的订单
 * 008--通过用户id,订单状态查询订单号，并显示物流信息
 * 009--通过用户id,图片路径来更新用户头像
 * 010--通过地址id，删除指定地址
 * 011--通过安全邮箱和用户名设置新密码
 * 012--通过安全邮箱找回密码
 * 
 * 作者=代思豪 ，如有需要请联系
 * 
 * */
@WebServlet(
		urlPatterns = { "/UserServlet.do" }, 
		initParams = { 
				@WebInitParam(name = "realpath", value = "/home/NY/userImg")
		})
@MultipartConfig
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CustomerService cuss = null;
	ConsigneeService cons = null;
	OrderService ords = null;

	public UserServlet() {
		super();
		cuss = new CustomerServiceImpl();
		cons = new ConsigneeServiceImpl();
		ords = new OrderServiceImpl();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		response.setContentType("text/html; charset=UTF-8");

		String action = request.getParameter("method");

		if (action.equals("001")) {
			search001(request, response);
		} else if (action.equals("002")) {
			search002(request, response);
		} else if (action.equals("003")) {
			search003(request, response);
		} else if (action.equals("004")) {
			search004(request, response);
		} else if (action.equals("005")) {
			search005(request, response);
		} else if (action.equals("006")) {
			search006(request, response);
		} else if (action.equals("007")) {
			search007(request, response);
		} else if (action.equals("008")) {
			search008(request, response);
		} else if (action.equals("009")) {
			search009(request, response);
		} else if (action.equals("010")) {
			search010(request, response);
		} else if (action.equals("011")) {
			search011(request, response);
		} else if (action.equals("012")) {
			search012(request, response);
		}	
	}



	private void search001(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户的id查询用户的积分和订单数 作者==代思豪，如有需要请联系
		 */
		int customer_id = Integer.parseInt(request.getParameter("customer_id"));

		UserWelVO usvo = new UserWelVO();
		usvo = cuss.searchScore(customer_id);

		request.setAttribute("usvo", usvo);

		try {
			request.getRequestDispatcher("/web/user/welcomePage.jsp").forward(
					request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	private void search002(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户的id查询用户的详细信息 作者==代思豪，如有需要请联系
		 */
		int customer_id = Integer.parseInt(request.getParameter("customer_id"));

		CustomerVO cusvo = cuss.searchInfo(customer_id);
		request.setAttribute("cusvo", cusvo);

		try {
			request.getRequestDispatcher("/web/user/userinfo.jsp").forward(
					request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}

	private void search003(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户的id查询用户的所有订单,实现分页功能 作者==代思豪，如有需要请联系
		 */

		int customer_id = Integer.parseInt(request.getParameter("customer_id"));

		// 得到查询的当前页

		String strCurrent = request.getParameter("current");

		int current = Integer.parseInt(strCurrent);

		// 调用服务层
		PageVO<OrdersVO> ovolist = new PageVO<OrdersVO>();

		ovolist.setCurrentPages(current);

		ovolist = ords.list(current, customer_id);

		request.setAttribute("oovolist", ovolist);
		request.setAttribute("current", current);
		try {
			request.getRequestDispatcher("/web/user/myIndent.jsp").forward(
					request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void search004(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户的id查询用户的详细地址 作者==代思豪，如有需要请联系
		 */
		String customer_id = request.getParameter("customer_id");

		ConsigneeVO cvo = new ConsigneeVO();

		cvo.setCustomer_id(customer_id);

		List<ConsigneeVO> cvolist = cons.findAllConsignee(cvo);
        int size=cvolist.size();
        request.setAttribute("size", size);
		request.setAttribute("cvolist", cvolist);

		try {
			request.getRequestDispatcher("/web/user/address.jsp").forward(
					request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();

		}
	}

	private void search005(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过时间和订单状态查询订单，实现分页功能 作者==代思豪， 如有需要请联系
		 */

		String customer_id = null;
		String beginDate = null;
		String endDate = null;
		String status = null;

		if (request.getParameter("customer_id") == null
				|| "".equals(request.getParameter("customer_id"))) {
			customer_id = (String) request.getSession().getAttribute("deptno");
		} else {
			customer_id = request.getParameter("customer_id");
		}

		if (request.getParameter("beginDate") == null
				|| "".equals(request.getParameter("beginDate"))) {
			beginDate = (String) request.getSession().getAttribute("beginDate");
		} else {
			beginDate = request.getParameter("beginDate");
			System.out.println(beginDate);
		}

		if (request.getParameter("endDate") == null
				|| "".equals(request.getParameter("endDate"))) {
			endDate = (String) request.getSession().getAttribute("endDate");
		} else {
			endDate = request.getParameter("endDate");
		}

		if (request.getParameter("status") == null
				|| "".equals(request.getParameter("status"))) {
			status = (String) request.getSession().getAttribute("status");
		} else {
			status = request.getParameter("status");
		}

		// 封装成查询VO
		SearchVO svo = new SearchVO();
		svo.setBeginDate(beginDate);
		svo.setEndDate(endDate);
		svo.setCustomer_id(customer_id);
		svo.setStatus(status);

		// 得到查询的当前页

		String strCurrent = request.getParameter("current");

		int current = Integer.parseInt(strCurrent);

		// 调用服务层
		PageVO<OrdersVO> ovolist = new PageVO<OrdersVO>();

		ovolist.setCurrentPages(current);

		ovolist = ords.list(current, svo);
		// 返回页面
		request.getSession().setAttribute("deptno", customer_id);
		request.getSession().setAttribute("beginDate", beginDate);
		request.getSession().setAttribute("endDate", endDate);
		request.getSession().setAttribute("status", status);

		request.setAttribute("ovolist", ovolist);
		request.setAttribute("current", current);
		try {
			request.getRequestDispatcher("/web/user/myIndent.jsp").forward(
					request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void search006(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户当前id完善个人信息 作者=代思豪，如有需要请联系
		 */

		int customer_id = Integer.parseInt(request.getParameter("customer_id"));
		String realname = request.getParameter("realname");
		String mobile = request.getParameter("mobile");
		String telphone = request.getParameter("telphone");
		String email = request.getParameter("email");
		String qq = request.getParameter("qq");
		boolean b = cuss.update(realname, mobile, telphone, email, qq,
				customer_id);

		request.setAttribute("boo", b);

		try {
			request.getRequestDispatcher(
					"/UserServlet.do?method=002&customer_id=" + customer_id)
					.forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}

	private void search007(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过订单id删除指定的订单 作者=代思豪，如有需要请联系
		 */

		int customer_id = Integer.parseInt(request.getParameter("customer_id"));
		int orders_id = Integer.parseInt(request.getParameter("orders_id"));
		boolean b = ords.delete(orders_id);
		request.setAttribute("boo", b);

		try {
			request.getRequestDispatcher(
					"/UserServlet.do?method=003&current=1&customer_id="
							+ customer_id).forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}

	}

	private void search008(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过订单状态查询订单号，并显示物流信息 作者=代思豪，如有需要请联系
		 */

		int customer_id = Integer.parseInt(request.getParameter("customer_id"));

		// 得到查询的当前页

		String strCurrent = request.getParameter("current");

		int current = Integer.parseInt(strCurrent);

		// 调用服务层
		PageVO<OrdersVO> ovolist = new PageVO<OrdersVO>();

		ovolist.setCurrentPages(current);

		ovolist = ords.list(current, customer_id);

		request.setAttribute("oovolist", ovolist);
		request.setAttribute("current", current);
		try {
			request.getRequestDispatcher("/web/user/package.jsp").forward(
					request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private void search009(HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * 通过用户id 和 path 来更新用户头像
		 */
		CustomerVO customer = (CustomerVO) request.getSession().getAttribute(
				"custvo");

		int customer_id = Integer.parseInt(customer.getCustomer_id());

		try {
			Part part = request.getPart("image");

			String header = part.getHeader("Content-Disposition");

			int position = header.lastIndexOf(".");

			String ext = header.substring(position, header.length() - 1);

			String name = UUID.randomUUID().toString().replace("-", ""); // 图片的名字

			//String realPath = request.getServletContext().getRealPath("/test"); // 图片保存的地址

			part.write(this.getInitParameter("realpath") + "\\" + name + ext);

			String path = name + ext;

			cuss.udateImage(path, customer_id);
			request.getRequestDispatcher(
					"/UserServlet.do?method=002&customer_id=" + customer_id)
					.forward(request, response);

		} catch (IllegalStateException | IOException | ServletException e) {

			e.printStackTrace();
		}

	}
	
	
	
	private void search010(HttpServletRequest request,
			HttpServletResponse response) {
		
		/*
		 * 通过地址id删除指定的订单 
		 * 
		 * 作者=代思豪，如有需要请联系
		 */

		int customer_id = Integer.parseInt(request.getParameter("customer_id"));
		int consignee_id = Integer.parseInt(request.getParameter("consignee_id"));
		boolean b = cons.deleteOne(consignee_id);
		request.setAttribute("boo", b);

		try {
			request.getRequestDispatcher(
					"/UserServlet.do?method=004&customer_id="
							+ customer_id).forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
	}
	
	
	


	private void search011(HttpServletRequest request,
			HttpServletResponse response) {
		

		/*
		 * 通过安全邮箱和用户名设置新的密码 
		 * 
		 * 作者=代思豪，如有需要请联系
		 */

		String email=(String) request.getAttribute("email");
		String account=(String) request.getAttribute("account");
		String pwd=(String) request.getAttribute("pwd");
		
		boolean b = cuss.update(email, account, pwd);
		
		request.setAttribute("boo", b);
		
		if(b==true){
			
		}else{
			
		}
		
		try {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	

	private void search012(HttpServletRequest request,
			HttpServletResponse response) {
		
		String emailrr=(String) request.getParameter("email");
		String account=(String) request.getParameter("account");
		String newPwd = cuss.searchPwd(emailrr, account);
		
		Email.findPsw(newPwd,emailrr);
		
		try {
			request.getRequestDispatcher("/web/user/login.jsp").forward(request, response);
		} catch (ServletException | IOException e) {
			e.printStackTrace();
		}
		
	}

}
