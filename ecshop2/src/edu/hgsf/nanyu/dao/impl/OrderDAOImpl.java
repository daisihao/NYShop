 package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import edu.hgsf.nanyu.dao.OrderDAO;
import edu.hgsf.nanyu.entity.Orders;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.OrdersVO;

public class OrderDAOImpl implements OrderDAO {

	@Override
	public Orders selectOne(int customer_id) {

		return null;
	}

	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate) {

		List<Orders> olist = new ArrayList<Orders>();
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;

		try {
			// 获得连接
			conn = DBUtil.getConnection();
			// 创建预处理语句对象
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_PAGE);

			pstat.setString(1, beginDate);
			pstat.setString(2, endDate);
			pstat.setInt(3, customer_id);
			pstat.setInt(4, (current - 1) * pageSize);
			pstat.setInt(5, current * pageSize);

			// 执行SQL，获得结果集
			rs = pstat.executeQuery();

			while (rs.next()) {
				Orders os = new Orders();

				os.setOrders_id(rs.getInt("ORDERS_ID"));
				os.setConsignee_id(rs.getInt("CONSIGNEE_ID"));
				os.setCustomer_id(rs.getInt("CUSTOMER_ID"));
				os.setOrders_no(rs.getString("ORDERS_NUM"));
				os.setOrders_time(rs.getDate("ORDERS_TIME"));
				os.setStatus(rs.getString("STATUS"));
				os.setPaytype(rs.getString("paytype"));
				os.setOrders_pay(rs.getDouble("ORDERS_PAY"));

				// 将该实体放入集合
				olist.add(os);
			}

			// TODO Auto-generated method stub
			return olist;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}

	@Override
	public int total() {
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		int total = 0;
		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_COUNT);
			rs = pstat.executeQuery();
			while (rs.next()) {
				total = rs.getInt("total");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}

		return total;
	}

	@Override
	public int total(int customer_id, String beginDate, String endDate) {
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_PAGE_COUNT);
			pstat.setString(1, beginDate);
			pstat.setString(2, endDate);
			pstat.setInt(3, customer_id);

			rs = pstat.executeQuery();
			while (rs.next()) {
				count = rs.getInt("TOTAL");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		// TODO Auto-generated method stub
		return count;
	}

	@Override
	public List<Orders> selectList(int customer_id) {
		/*
		 * --查询当前用户所有的订单-- 作者=代思豪，如有需要更改请联系
		 */
		List<Orders> olist = new ArrayList<Orders>();

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Orders or = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_CUS_LIST);
			pstat.setInt(1, customer_id);
			rs = pstat.executeQuery();

			while (rs.next()) {
				or = new Orders();

				or.setConsignee_id(rs.getInt("consignee_id"));
				or.setCustomer_id(rs.getInt("customer_id"));
				or.setOrders_id(rs.getInt("orders_id"));
				or.setOrders_no(rs.getString("orders_num"));
				or.setOrders_pay(rs.getDouble("orders_pay"));
				or.setOrders_time(rs.getDate("orders_time"));
				or.setPaytype(rs.getString("paytype"));
				or.setStatus(rs.getString("status"));

				olist.add(or);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}

		return olist;

		/*
		 * ORDERS_ID NUMBER 订单id CONSIGNEE_ID NUMBER 收货人id CUSTOMER_ID NUMBER
		 * 顾客id ORDERS_NUM VARCHAR2(64) 订单编号 ORDERS_TIME DATE 下单时间 STATUS
		 * VARCHAR2(4) 订单状态 PAYTYPE VARCHAR2(45) 支付方式 ORDERS_PAY NUMBER 订单金额
		 * ORDERS_BAK1 NUMBER Y ORDERS_BAK2 DATE Y ORDERS_BAK3 VARCHAR2(45) Y
		 */
	}

	/*
	 * public static void main(String[] args) { 
	 * OrderDAO impl = new OrderDAOImpl(); 
	 * int count = impl.total(10, "1981/04/02", "1982/01/22");
	 * System.out.println(count);
	 *  List<Orders> olist = impl.selectPage(1, 10, 10, "1981/04/02", "1982/01/22"); 
	 *  //for(Amp e:elist){
	 * //System.out.println(e.getEname()+" ---- "+e.getHiredate());
	 * 
	 * //} }
	 */

	@Override
	public boolean insert(OrdersVO ordersvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int orders_id) {
		Connection conn = null;
		PreparedStatement pstat = null;
		boolean del=false;
			conn = DBUtil.getConnection();
			try {
				pstat = conn.prepareStatement(SQL_ORDERS_DELETE_ID);
				pstat.setInt(1, orders_id);
				int i=pstat.executeUpdate();
				System.out.println(i);
				if(i>=1){
					del=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{
				DBUtil.closeConnection(pstat, conn);
			}
			
		return del;
	}
	/*public static void main(String[] args) {
 		OrderDAO od = new OrderDAOImpl();
 	
 		boolean ss=od.delete(10004);
 		System.out.println(ss);

 		

}*/
	@Override
	public boolean delete() {
		List<Orders> olist = new ArrayList<Orders>();
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Orders or = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_DELETE_ALL);
			rs = pstat.executeQuery();

			while (rs.next()) {
				or = new Orders();

				or.setConsignee_id(rs.getInt("consignee_id"));
				or.setCustomer_id(rs.getInt("customer_id"));
				or.setOrders_id(rs.getInt("orders_id"));
				or.setOrders_no(rs.getString("orders_no"));
				or.setOrders_pay(rs.getInt("orders_pay"));
				or.setOrders_time(rs.getDate("orders_time"));
				or.setPaytype(rs.getString("paytype"));
				or.setStatus(rs.getString("status"));

				olist.removeAll(olist);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}

		return false;
	}
     	
	@Override
	public int countOrder(int customer_id) {
		/*
		 * --查询当前用户下的订单总数 作者=代思豪 ，如有需要请联系
		 */

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		int count = 0;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_CUS_COUNT);
			pstat.setInt(1, customer_id);
			rs = pstat.executeQuery();

			while (rs.next()) {
				count = rs.getInt("total");
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return count;
	}

	@Override
	public boolean update_status(OrdersVO ordersvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Orders> selectList(int customer_id, String beginDate,
			String endDate, String status) {

		/*
		 * --查询当前用户在指定时间的下的订单总数 作者=代思豪 ，如有需要请联系
		 */

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;

		List<Orders> olist = new ArrayList<Orders>();
		Orders ord = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_DATE_LIST);

			pstat.setInt(1, customer_id);
			pstat.setString(2, beginDate);
			pstat.setString(3, endDate);
			pstat.setString(4, status);

			rs = pstat.executeQuery();

			while (rs.next()) {
				ord = new Orders();
				ord.setConsignee_id(rs.getInt("consignee_id"));
				ord.setCustomer_id(rs.getInt("customer_id"));
				ord.setOrders_id(rs.getInt("orders_id"));
				ord.setOrders_no(rs.getString("orders_num"));
				ord.setOrders_time(rs.getDate("orders_time"));
				ord.setPaytype(rs.getString("paytype"));
				ord.setStatus(rs.getString("status"));
				olist.add(ord);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}

	@Override
	public List<Orders> selectList(int customer_id, String beginDate,
			String endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int total(int customer_id, String beginDate, String endDate,
			String status) {
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_PAGE_COUNT_STATUS);
			pstat.setString(1, beginDate);
			pstat.setString(2, endDate);
			pstat.setInt(3, customer_id);
			pstat.setString(4, status);

			rs = pstat.executeQuery();
			while (rs.next()) {
				count = rs.getInt("TOTAL");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		// TODO Auto-generated method stub
		return count;
	}

	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate, String status) {

		/*
		 * --查询当前用户在指定时间的下的订单总数 作者=代思豪 ，如有需要请联系
		 */

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;

		List<Orders> olist = new ArrayList<Orders>();
		Orders ord = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_PAGE_LIST);

			pstat.setString(1, beginDate);
			pstat.setString(2, endDate);
			pstat.setInt(3, customer_id);
			pstat.setString(4, status);
			pstat.setInt(5, (current-1)*pageSize);
			pstat.setInt(6, pageSize);


			rs = pstat.executeQuery();

			while (rs.next()) {
				ord = new Orders();
				ord.setConsignee_id(rs.getInt("consignee_id"));
				ord.setCustomer_id(rs.getInt("customer_id"));
				ord.setOrders_id(rs.getInt("orders_id"));
				ord.setOrders_no(rs.getString("orders_num"));
				ord.setOrders_time(rs.getDate("orders_time"));
				ord.setPaytype(rs.getString("paytype"));
				ord.setStatus(rs.getString("status"));
				olist.add(ord);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}

	/*
	 * public static void main(String[] args) { OrderDAOImpl oll=new
	 * OrderDAOImpl(); //List<Orders> list = oll.selectList(10003,"1990/04/09",
	 * "2016/04/09"); List<Orders> list = oll.selectList(10003);
	 * //System.out.println(list.size()); int i = oll.countOrder(10003);
	 * System.out.println(i);
	 * 
	 * }
	 */

	@Override
	public List<Orders> selectPage(int current, int pageSize, int customer_id) {
		/*
		 * --查询当前用户的所有订单 作者=代思豪 ，如有需要请联系
		 */

		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;

		List<Orders> olist = new ArrayList<Orders>();
		Orders ord = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_PAGE_LIST_ALL);

			pstat.setInt(1, customer_id);
			pstat.setInt(2, (current-1)*pageSize);
			pstat.setInt(3, pageSize);


			rs = pstat.executeQuery();

			while (rs.next()) {
				ord = new Orders();
				ord.setConsignee_id(rs.getInt("consignee_id"));
				ord.setCustomer_id(rs.getInt("customer_id"));
				ord.setOrders_id(rs.getInt("orders_id"));
				ord.setOrders_no(rs.getString("orders_num"));
				ord.setOrders_time(rs.getDate("orders_time"));
				ord.setPaytype(rs.getString("paytype"));
				ord.setStatus(rs.getString("status"));
				olist.add(ord);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}


	@Override
	public List<Orders> reget() {
		return null;
	}

	@Override
	public List<Orders> selectList(int Beginnumber, int Endnumber) {
		List<Orders> olist = new ArrayList<Orders>();
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Orders or = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_ORDERPAGE);
			pstat.setInt(1, Beginnumber-1);
			pstat.setInt(2, Endnumber-Beginnumber-1);

			rs = pstat.executeQuery();

			while (rs.next()) {
				or = new Orders();

				or.setConsignee_id(rs.getInt("consignee_id"));
				or.setCustomer_id(rs.getInt("customer_id"));
				or.setOrders_id(rs.getInt("orders_id"));
				or.setOrders_no(rs.getString("orders_num"));
				or.setOrders_pay(rs.getInt("orders_pay"));
				or.setOrders_time(rs.getDate("orders_time"));
				or.setPaytype(rs.getString("paytype"));
				or.setStatus(rs.getString("status"));

				olist.add(or);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}

	



	/*public static void main(String[] args) {
		OrderDAO testdao = new OrderDAOImpl();
		List<Orders> olist = testdao.selectList(1, 10);
		System.out.println(olist.size());
	}
	/*
	 * public static void main(String[] args) { OrderDAOImpl oll=new
	 * OrderDAOImpl(); int i = oll.total(10003, "01/01/1990", "01/01/2111",
	 * "未支付"); System.out.println(i); //List<Orders> list = oll.selectPage(3, 5,
	 * 10003, "01/01/1990", "01/01/2111", "未支付");
	 * //System.out.println(list.size()); }
	 */
	public static void main(String[] args) {
		OrderDAOImpl odao=new OrderDAOImpl();
		List<Orders> olist = odao.selectList(1, 6);
		System.out.println(olist.size());
	}

	@Override
	public boolean deleteone(int orders_id) {
		boolean boo=false;
		Connection conn = null;
		PreparedStatement pstat = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_DELETE_ONE);
			pstat.setInt(1, orders_id);
			pstat.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(pstat, conn);
		}
		
		boo=true;	
		return boo;
	}
	
/*	public static void main(String[] args) {
		OrderDAOImpl oll=new OrderDAOImpl();
		List<Orders> list = oll.selectList();
		System.out.println(list.size());
	}*/

	@Override
	public List<Orders> selectList() {
		List<Orders> olist = new ArrayList<Orders>();
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		Orders or = null;

		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_ORDERS_SELECT_LIST);
			rs = pstat.executeQuery();

			while (rs.next()) {
				or = new Orders();

				or.setConsignee_id(rs.getInt("consignee_id"));
				or.setCustomer_id(rs.getInt("customer_id"));
				or.setOrders_id(rs.getInt("orders_id"));
				or.setOrders_no(rs.getString("orders_num"));
				or.setOrders_pay(rs.getInt("orders_pay"));
				or.setOrders_time(rs.getDate("orders_time"));
				or.setPaytype(rs.getString("paytype"));
				or.setStatus(rs.getString("status"));

				olist.add(or);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return olist;
	}

	@Override
	public Orders selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectByTime(String timeBegin, String timeEnd) {
		return null;
	}
}
