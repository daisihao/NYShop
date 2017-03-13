package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.OrderDetail;
import edu.hgsf.nanyu.view.OrderdetailVO;

public interface OrderDetailDAO {
	String SQL_ORDERDETAIL_INSERT_ONE="INSERT INTO ORDERS_DETAIL (PRODUCT_ID, PRODUCT_COUNT, ORDER_NUM) "
			+ "VALUES (?, ?, ?)";
	String SQL_ORDERDETAIL_SELCET="SELECT * FROM ORDERS_DETAIL WHERE ORDER_NUM = ?";
	
	boolean insert(OrderdetailVO orderdetailvo);
	List<OrderDetail> find(String order_num);
}
