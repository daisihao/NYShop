package edu.hgsf.nanyu.service;

import java.util.List;




import edu.hgsf.nanyu.entity.Orders;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;

public interface OrderService {
	int PAGESIZE=5;

	void remove(OrdersVO ovo);
	
	int total();

	void remove();

	OrdersVO load(int customer_id);

	List<OrdersVO> list();

	PageVO<OrdersVO> page(int current, SearchVO svo);
	PageVO<OrdersVO> list(int current, SearchVO svo);
	
	
	PageVO<OrdersVO> list(int current, int customer_id);
	
	List<OrdersVO> selectList(SearchVO svo);
	
	List<OrdersVO> selectList(PageVO<OrdersVO> pvo);
	
	List<OrdersVO> selectList();
	
	List<OrdersVO> page(SearchVO svo);
	
	List<OrdersVO> list(int customer_id);
	
	boolean addOrder(OrdersVO ordersvo);
	
	boolean updateOrderStatus(OrdersVO ordersvo);
	
	boolean delete(int orders_id);
	boolean deletes(int orders_id);
	
	public List<OrdersVO> selectByTime(String timeBegin, String timeEnd);

}
