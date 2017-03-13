package edu.hgsf.nanyu.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import edu.hgsf.nanyu.service.ConsigneeService;
import edu.hgsf.nanyu.service.impl.ConsigneeServiceImpl;
import edu.hgsf.nanyu.view.ConsigneeVO;
import edu.hgsf.nanyu.view.CustomerVO;

@WebServlet("/web/user/consignee.do")
public class ConsigneeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ConsigneeServlet() {
		super();
		// TODO Auto-generated constructor stub
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
		response.setCharacterEncoding("utf-8");

		System.out.println("成功跳转");
		String method = request.getParameter("method");
		if ("submit".equals(method)) {
			submit(request, response);
		}
		if ("usersubmit".equals(method)) {
			usersubmit(request, response);
		}
		if ("find".equals(method)) {
			find(request, response);
		}

	}

	private void usersubmit(HttpServletRequest request,
			HttpServletResponse response) {
		String customer_id=((CustomerVO)request.getSession().getAttribute("custvo")).getCustomer_id();

		/*if ("请选择地区".equals(request.getParameter("cho_Area"))
				|| "".equals(request.getParameter("consignee"))
				|| "".equals(request.getParameter("mobile"))) {
			try {
				request.getRequestDispatcher("/web/user/consingnee.jsp")
						.forward(request, response);
			} catch (ServletException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}*/
		ConsigneeVO consigneeVO = new ConsigneeVO();
		// 获取页面表单数据
		String name = request.getParameter("consignee");
		String address="";
		if (request.getParameter("cho_Province").equals(request
				.getParameter("cho_City"))) {
			address = request.getParameter("cho_Province")
					+ request.getParameter("cho_Area")
					+ request.getParameter("address");
		} else {
			address = request.getParameter("cho_Province")
					+ request.getParameter("cho_City")
					+ request.getParameter("cho_Area")
					+ request.getParameter("address");
		}
		String email = request.getParameter("email") + "";
		String zipcode = request.getParameter("zipcode") + "";
		String mobilenum = request.getParameter("mobile") + "";
		String phonenum = request.getParameter("tel") + "";
		String signbuilding = request.getParameter("sign_building") + "";
		String besttime = request.getParameter("best_time") + "";
		// 将数据封装到consigneeVO对象中
		consigneeVO.setCustomer_id(customer_id);
		consigneeVO.setName(name);
		consigneeVO.setAddress(address);
		consigneeVO.setEmail(email);
		consigneeVO.setZipcode(zipcode);
		consigneeVO.setMobilenum(mobilenum);
		consigneeVO.setPhonenum(phonenum);
		consigneeVO.setSignbuilding(signbuilding);
		consigneeVO.setBesttime(besttime);

		ConsigneeService conse = new ConsigneeServiceImpl();
		conse.addConsignee(consigneeVO);
		try {
			request.getRequestDispatcher("/UserServlet.do?method=004&customer_id="+customer_id)
			.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	

	private void find(HttpServletRequest request, HttpServletResponse response) {
		String customer_id=((CustomerVO)request.getSession().getAttribute("custvo")).getCustomer_id();
		
		
		//request.setAttribute("customer_id", customer_id);
		ConsigneeVO consigneeVO = new ConsigneeVO();
		consigneeVO.setCustomer_id(customer_id);
		ConsigneeService conse = new ConsigneeServiceImpl();
		//ConsigneeVO detailVO=conse.findConsignee(consigneeVO);
		List<ConsigneeVO> volist=conse.findAllConsignee(consigneeVO);
		for(ConsigneeVO e:volist){
			System.out.println(e.getConsignee_id());
		}
		System.out.println("size"+volist.size());
		//System.out.println(detailVO);
		//System.out.println(detailVO.getConsignee_id());
		if(volist.size()==0){
			try {
				request.getRequestDispatcher("/web/user/consignee.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			request.getSession().setAttribute("volist", volist);
			//request.setAttribute("volist", volist);
			try {
				request.getRequestDispatcher("/web/user/order.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

	private void submit(HttpServletRequest request, HttpServletResponse response) {
		String customer_id=((CustomerVO)request.getSession().getAttribute("custvo")).getCustomer_id();

		/*if ("请选择地区".equals(request.getParameter("cho_Area"))
				|| "".equals(request.getParameter("consignee"))
				|| "".equals(request.getParameter("mobile"))) {
			try {
				request.getRequestDispatcher("/web/user/consingnee.jsp")
						.forward(request, response);
			} catch (ServletException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}*/
		ConsigneeVO consigneeVO = new ConsigneeVO();
		// 获取页面表单数据
		String name = request.getParameter("consignee");
		String address="";
		if (request.getParameter("cho_Province").equals(request
				.getParameter("cho_City"))) {
			address = request.getParameter("cho_Province")
					+ request.getParameter("cho_Area")
					+ request.getParameter("address");
		} else {
			address = request.getParameter("cho_Province")
					+ request.getParameter("cho_City")
					+ request.getParameter("cho_Area")
					+ request.getParameter("address");
		}
		String email = request.getParameter("email") + "";
		String zipcode = request.getParameter("zipcode") + "";
		String mobilenum = request.getParameter("mobile") + "";
		String phonenum = request.getParameter("tel") + "";
		String signbuilding = request.getParameter("sign_building") + "";
		String besttime = request.getParameter("best_time") + "";
		// 将数据封装到consigneeVO对象中
		consigneeVO.setCustomer_id(customer_id);
		consigneeVO.setName(name);
		consigneeVO.setAddress(address);
		consigneeVO.setEmail(email);
		consigneeVO.setZipcode(zipcode);
		consigneeVO.setMobilenum(mobilenum);
		consigneeVO.setPhonenum(phonenum);
		consigneeVO.setSignbuilding(signbuilding);
		consigneeVO.setBesttime(besttime);

		ConsigneeService conse = new ConsigneeServiceImpl();
		conse.addConsignee(consigneeVO);
		try {
			request.getRequestDispatcher("/web/user/consignee.do?method=find")
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
