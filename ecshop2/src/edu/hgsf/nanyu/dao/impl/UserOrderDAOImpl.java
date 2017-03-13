package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import edu.hgsf.nanyu.dao.OrderDAO;
import edu.hgsf.nanyu.entity.Orders;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.util.OrdernumUtil;
import edu.hgsf.nanyu.view.OrdersVO;

public class UserOrderDAOImpl implements OrderDAO {

	@Override
	public boolean insert(OrdersVO ordersvo) {
		boolean flag=false;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Connection conn = DBUtil.getConnection();
		try {
			pstat = conn.prepareStatement(OrderDAO.SQL_ORDERS_INSERT_ONE);
			pstat.setInt(1, Integer.parseInt(ordersvo.getConsignee_id()));
			pstat.setInt(2, Integer.parseInt(ordersvo.getCustomer_id()));
			pstat.setString(3, ordersvo.getOrders_no());
			pstat.setString(4, ordersvo.getStatus());
			pstat.setString(5, ordersvo.getPaytype());
			pstat.setDouble(6, Double.parseDouble(ordersvo.getOrders_pay()));/*(6, Integer.parseInt(ordersvo.getOrders_pay()));*/
			pstat.executeUpdate();
			flag=true;
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return flag;
	}

/*	public static void main(String[] args) {
		OrderDAO od=new UserOrderDAOImpl();
		OrdersVO ordersvo=new OrdersVO();
		ordersvo.setConsignee_id(4+"");
		ordersvo.setCustomer_id(10003+"");
		ordersvo.setOrders_no(OrdernumUtil.getOrders_no());
		ordersvo.setOrders_pay(1096+"");
		ordersvo.setPaytype("货到付款");
		ordersvo.setStatus("已支付");
		System.out.println(od.insert(ordersvo));
		//System.out.println(od.update_status(ordersvo));
	}*/
	@Override
	public boolean delete(int customer_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Orders selectOne(int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int total(int customer_id, String beginDate, String endDate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Orders> selectList(int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countOrder(int customer_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean update_status(OrdersVO ordersvo) {
		boolean flag=false;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Connection conn = DBUtil.getConnection();
		try {
			pstat = conn.prepareStatement(SQL_ORDERS_UPDATE_STATUS);
			pstat.setString(1, ordersvo.getStatus());
			pstat.setString(2, ordersvo.getOrders_no());
			
			pstat.executeUpdate();
			flag=true;
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return flag;
	}
	

	@Override
	public List<Orders> selectList(int customer_id, String beginDate,
			String endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectList(int customer_id, String beginDate,
			String endDate, String status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate, String status) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int total(int customer_id, String beginDate, String endDate,
			String status) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Orders selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> reget() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectList(int Beginnumber, int Endnumber) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteone(int orders_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Orders> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectByTime(String timeBegin, String timeEnd) {
		// TODO Auto-generated method stub
		return null;
	}

}
