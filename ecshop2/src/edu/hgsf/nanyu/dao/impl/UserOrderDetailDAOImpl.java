package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.OrderDetailDAO;
import edu.hgsf.nanyu.entity.OrderDetail;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.OrderdetailVO;

public class UserOrderDetailDAOImpl implements OrderDetailDAO {
	
	@Override
	public List<OrderDetail> find(String order_num) {
		List<OrderDetail> detailList = new ArrayList<OrderDetail>();
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstat=null;
		ResultSet rs=null;
		OrderDetail orderdetail=null;
		try {
			pstat = conn
					.prepareStatement(SQL_ORDERDETAIL_SELCET);
			pstat.setString(1, order_num);
			rs = pstat.executeQuery();
			while(rs.next()){
				orderdetail=new OrderDetail();
				orderdetail.setOrderdetail_id(rs.getInt("ORDER_DATAIL_ID"));
				orderdetail.setorders_num(rs.getString("ORDER_NUM"));
				orderdetail.setProduct_count(rs.getInt("PRODUCT_COUNT"));
				orderdetail.setProduct_id(rs.getInt("PRODUCT_ID"));
				detailList.add(orderdetail);
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return detailList;
	}
	@Override
	public boolean insert(OrderdetailVO orderdetailvo) {
		boolean flag = false;
		Connection conn = DBUtil.getConnection();
		PreparedStatement pstat=null;
		ResultSet rs=null;
		try {
			pstat = conn
					.prepareStatement(SQL_ORDERDETAIL_INSERT_ONE);
			pstat.setInt(1, Integer.parseInt(orderdetailvo.getProduct_id()));
			pstat.setInt(2, Integer.parseInt(orderdetailvo.getProduct_count()));
			//System.out.println(orderdetailvo.getorders_num());
			pstat.setString(3, orderdetailvo.getorders_num());
			pstat.executeUpdate();
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}

		return flag;
	}

	/*public static void main(String[] args) {
		OrderDetailDAO testdao=new UserOrderDetailDAOImpl();
		System.out.println(testdao.find("201507262124496352").size());
	}*/

	/*public static void main(String[] args) {
		OrderDetailDAO tt = new UserOrderDetailDAOImpl();
		OrderdetailVO o = new OrderdetailVO();
		o.setorders_num("2123");
		o.setProduct_count(1 + "");
		o.setProduct_id(3 + "");
		System.out.println(tt.insert(o));
	}*/
}
