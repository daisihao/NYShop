package edu.hgsf.nanyu.service.impl;

import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.OrderDAO;
import edu.hgsf.nanyu.dao.impl.UserOrderDAOImpl;
import edu.hgsf.nanyu.service.OrderService;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;

public class UserOrderServiceImpl implements OrderService {

	@Override
	public boolean addOrder(OrdersVO ordersvo) {
		boolean flag=false;
		OrderDAO orderdao=new UserOrderDAOImpl();
		flag=orderdao.insert(ordersvo);
		return flag;
	}

	@Override
	public void remove(OrdersVO ovo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public OrdersVO load(int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdersVO> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageVO<OrdersVO> page(int current, SearchVO svo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateOrderStatus(OrdersVO ordersvo) {
		boolean flag=false;
		OrderDAO orderdao=new UserOrderDAOImpl();
		flag=orderdao.update_status(ordersvo);
		return flag;
	}

	@Override
	public List<OrdersVO> page(SearchVO svo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdersVO> list(int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageVO<OrdersVO> list(int current, SearchVO svo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageVO<OrdersVO> list(int current, int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdersVO> selectList(SearchVO svo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int orders_id) {
		return false;
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<OrdersVO> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdersVO> selectList(PageVO<OrdersVO> pvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean deletes(int customer_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<OrdersVO> selectByTime(String timeBegin, String timeEnd) {
		
		return null;
	}

/*	public static void main(String[] args) {
		UserOrderService ur=new UserOrderServiceImpl();
		OrdersVO ordersvo=new OrdersVO();
		ordersvo.setConsignee_id(4+"");
		ordersvo.setCustomer_id(10003+"");
		ordersvo.setOrders_no("201507211025331234");
		ordersvo.setOrders_pay(1096+"");
		ordersvo.setPaymode("货到付款");
		ordersvo.setState("未支付");
		System.out.println(ur.addOrder(ordersvo));
	}*/
}
