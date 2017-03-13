package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Orders;
import edu.hgsf.nanyu.view.OrdersVO;

public interface OrderDAO {
	String SQL_ORDERS_DELETE_ID ="DELETE FROM ORDERS WHERE ORDERS_ID=?";
	String SQL_ORDERS_DELETE_ALL = "DELETE FROM ORDERS";
	//String SQL_ORDERS_SELECT_ONE = "SELECT * FROM  ORDERS WHERE CUSTOMER_ID=?";
	String SQL_ORDERS_SELECT_LIST = "SELECT * FROM ORDERS ORDER BY ORDERS_ID DESC";
	String SQL_ORDERS_SELECT_COUNT = "SELECT COUNT(*) TOTAL FROM  ORDERS";
	String SQL_ORDERS_SELECT_CUS_COUNT = "SELECT COUNT(*) TOTAL FROM  ORDERS WHERE CUSTOMER_ID=?";
	String SQL_ORDERS_SELECT_CUS_LIST="SELECT * FROM  ORDERS WHERE CUSTOMER_ID=?";
	String SQL_ORDERS_SELECT_DATE_LIST="SELECT * FROM  ORDERS WHERE CUSTOMER_ID=? AND ORDERS_TIME >=STR_TO_DATE(?,'%m/%d/%Y') AND ORDERS_TIME<=STR_TO_DATE(?,'%m/%d/%Y') AND STATUS=?";
	String SQL_ORDERS_SELECT_PAGE = "SELECT * FROM  (SELECT t.*,ROWNUM rn FROM  ORDERS t "+
            "WHERE ORDERS_TIME >= STR_TO_DATE(?,'%m/%d/%Y') AND ORDERS_TIME <= STR_TO_DATE(?,'%m/%d/%Y') "+
            "AND CUSTOMER_ID=?)TT WHERE RN>? AND RN<=? LIMIT ?,?";
	String SQL_ORDERS_SELECT_PAGE_LIST = "SELECT tt.* FROM  (SELECT t.* FROM  ORDERS t WHERE ORDERS_TIME >=STR_TO_DATE(?, '%m/%d/%Y') AND ORDERS_TIME <=STR_TO_DATE(?, '%m/%d/%Y') AND CUSTOMER_ID=? AND STATUS=?)tt  LIMIT ?,?";
	String SQL_ORDERS_SELECT_PAGE_LIST_ALL ="SELECT * FROM  (SELECT t.* FROM  ORDERS t WHERE CUSTOMER_ID=? )TT LIMIT ?,?";

	String SQL_ORDERS_PAGE_COUNT = "SELECT COUNT(*)TOTAL FROM  ORDERS WHERE ORDERS_TIME >=STR_TO_DATE(?,'%m/%d/%Y') AND ORDERS_TIME<=STR_TO_DATE(?,'%m/%d/%Y') "+
            "AND CUSTOMER_ID=?";
	String SQL_ORDERS_PAGE_COUNT_STATUS = "SELECT COUNT(*)TOTAL FROM  ORDERS WHERE ORDERS_TIME >=STR_TO_DATE(?,'%m/%d/%Y') AND ORDERS_TIME<=STR_TO_DATE(?,'%m/%d/%Y') AND CUSTOMER_ID=? AND STATUS=?";
	
	String SQL_ORDERS_INSERT_ONE = "INSERT INTO ORDERS ( CONSIGNEE_ID, CUSTOMER_ID, ORDERS_NUM,  "
			+ "STATUS, PAYTYPE, ORDERS_PAY) VALUES ( ?, ?, "
			+ "?, ?, ?, ?)";
	String SQL_ORDERS_UPDATE_STATUS = "UPDATE ORDERS SET STATUS= ? WHERE ORDERS_NUM = ?";
//	String SQL_ORDERS_SELECT_ORDERPAGE="SELECT S.* FROM (SELECT ROWNUM RN,T.* FROM ORDERS T ORDER BY ORDERS_ID DESC) S WHERE S.RN BETWEEN ? AND ? LIMIT ?,?"; 
	String SQL_ORDERS_DELETE_ONE="DELETE FROM ORDERS WHERE ORDERS_ID=?"; 
	//String SQL_ORDERS_SELECT_DATE = "SELECT * FROM ORDERS WHERE ORDERS_TIME>=TO_DATE(?,'YYYY/MM/DD') AND ORDERS_TIME<=TO_DATE(?,'YYYY/MM/DD')";
	String SQL_ORDERS_SELECT_ORDERPAGE="SELECT * FROM ORDERS LIMIT ?,?"; 
	
	boolean update_status(OrdersVO ordersvo);
	
	boolean insert(OrdersVO ordersvo);
	
	boolean delete(int orders_id);
	
	boolean deleteone(int orders_id);
    
	boolean delete();

    int countOrder(int customer_id);

	List<Orders> selectList(int customer_id);
	
	List<Orders> selectList();
	
	Orders selectAll();

	Orders selectOne(int customer_id);
	
	List<Orders> reget();

	List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate,String status);
	
	List<Orders> selectPage(int current, int pageSize, int customer_id);
			
	List<Orders> selectList(int customer_id,String beginDate, String endDate ,String status);
	
	List<Orders> selectPage(int current, int pageSize, int customer_id,
			String beginDate, String endDate);
	
	List<Orders> selectList(int Beginnumber, int Endnumber);
	

	int total();

	int total(int customer_id, String beginDate, String endDate);

	List<Orders> selectList(int customer_id, String beginDate, String endDate);

	int total(int customer_id, String beginDate, String endDate, String status);
	
	public List<Orders> selectByTime(String timeBegin,String timeEnd);
	

}
