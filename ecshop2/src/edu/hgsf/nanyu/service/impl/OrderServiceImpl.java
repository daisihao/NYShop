package edu.hgsf.nanyu.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;





import org.apache.commons.beanutils.BeanUtils;
import org.eclipse.jdt.internal.compiler.batch.Main;

import edu.hgsf.nanyu.dao.OrderDAO;
import edu.hgsf.nanyu.dao.impl.OrderDAOImpl;
import edu.hgsf.nanyu.entity.Orders;
import edu.hgsf.nanyu.service.OrderService;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;

public class OrderServiceImpl implements OrderService {
	private OrderDAO odao;

	public OrderServiceImpl() {
		odao = new OrderDAOImpl();
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
	public OrdersVO load(int Ordersno) {
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
		// 1、初始化返回到控制层的PageVO
		PageVO<OrdersVO> pvo = new PageVO<OrdersVO>();
		OrdersVO ovo=null;
		// 2、通过调用DAO提供的方法获取符合条件的总记录数
		int customer_id = Integer.parseInt(svo.getCustomer_id());
		String beginDate = svo.getBeginDate();
		String endDate = svo.getEndDate();
		int count = odao.total(customer_id, beginDate, endDate);
		// 3、将总记录数赋值给PageVO
		pvo.setTotal(count);

		pvo.setCurrentPages(current);// 将当前页赋值给pvo

		// 4、通过调用DAO提供的方法获取符合条件的当前页记录
		List<Orders> olist = odao.selectPage(current, pvo.getPageSize(),
				customer_id, beginDate, endDate);

		// 5、通过BeanUtils将entity转换为vo的集合
		for(Orders eo: olist){						
		    try {
		    	ovo=new OrdersVO();
				BeanUtils.copyProperties(ovo,eo);
				pvo.getRows().add(ovo);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}			
		}
		return pvo;
	}

	@Override
	public boolean addOrder(OrdersVO ordersvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateOrderStatus(OrdersVO ordersvo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<OrdersVO> page(SearchVO svo) {
		/*
		 * 通过 用户id ，订单开始日期，订单结束结束日期查询订单
		 * 作者代思豪，如有需要请联系
		 * */
		
		List<OrdersVO> ovolist=new ArrayList<OrdersVO>();
		OrdersVO ovo=null;
		int customer_id = Integer.parseInt(svo.getCustomer_id());
		String beginDate = svo.getBeginDate();
		String endDate = svo.getEndDate();
		String status=svo.getStatus();
		
		List<Orders> olist = odao.selectList(customer_id, beginDate, endDate, status);
	
		for(Orders order: olist){
			ovo=new OrdersVO();						
		    try {
				BeanUtils.copyProperties(ovo,order);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}			
			ovolist.add(ovo);
		}
		
		return ovolist;
	}

	@Override
	public List<OrdersVO> list(int customer_id) {
		/*
		 * 通过 用户id ，订单开始日期，订单结束结束日期查询订单
		 * 作者代思豪，如有需要请联系
		 * */
		List<OrdersVO> ovolist=new ArrayList<OrdersVO>();
		OrdersVO ovo=null;
		List<Orders> olist = odao.selectList(customer_id);
		
		for(Orders order: olist){
			ovo=new OrdersVO();						
		    try {
				BeanUtils.copyProperties(ovo,order);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}			
			ovolist.add(ovo);
		}
		return ovolist;
	}

	@Override
	public PageVO<OrdersVO> list(int current, SearchVO svo) {
		
		PageVO<OrdersVO> pvo=new PageVO<OrdersVO>();
		// 查找符合条件的记录一共有多少条
		int customer_id=Integer.parseInt(svo.getCustomer_id());
		String beginDate=svo.getBeginDate();
		String endDate=svo.getEndDate();
		String status=svo.getStatus();
		int count = odao.total(customer_id, beginDate, endDate,status);
		
		// 总页数
		pvo.setTotal(count);
		
		// 每页的容量
		pvo.setTotal(PAGESIZE);
		
		// 当前页的记录		
		int totalPages=(count%PAGESIZE==0)?(count/PAGESIZE):(count/PAGESIZE+1);		
		pvo.setTotalPages(totalPages);
		
		List<Orders> olist = odao.selectPage(current, PAGESIZE, customer_id, beginDate, endDate, status);
		
		List<OrdersVO> evlist=new ArrayList<OrdersVO>();
		for(Orders ord:olist){
			OrdersVO ovo=new OrdersVO();
			try {
				BeanUtils.copyProperties(ovo, ord);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			evlist.add(ovo);
		}
		
		pvo.setRows(evlist);
		
		
		return pvo;

	}

	@Override
	public PageVO<OrdersVO> list(int current, int customer_id) {
		PageVO<OrdersVO> pvo=new PageVO<OrdersVO>();
		// 查找符合条件的记录一共有多少条

		int count = odao.countOrder(customer_id);
		
		// 总页数
		pvo.setTotal(count);
		
		// 每页的容量
		pvo.setTotal(PAGESIZE);
		
		// 当前页的记录		
		int totalPages=(count%PAGESIZE==0)?(count/PAGESIZE):(count/PAGESIZE+1);		
		pvo.setTotalPages(totalPages);
		
		List<Orders> olist = odao.selectPage(current, PAGESIZE,customer_id);
		
		List<OrdersVO> evlist=new ArrayList<OrdersVO>();
		for(Orders ord:olist){
			OrdersVO ovo=new OrdersVO();
			try {
				BeanUtils.copyProperties(ovo, ord);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			evlist.add(ovo);
		}
		
		pvo.setRows(evlist);
				
		return pvo;
	}

	@Override
	public List<OrdersVO> selectList(SearchVO svo) {
		return null;
	}

	@Override
	public boolean delete(int orders_id) {
		boolean b=false;
		b = odao.deleteone(orders_id);
		b=true;
		return b;
		
	}


	


	/*public static void main(String[] args) {
		OrderService impl = new OrderServiceImpl();
		SearchVO svo = new SearchVO("1", "1981/04/02", "2044/01/22");
		PageVO<OrdersVO> pages = impl.page(2, svo);
		int t = pages.getTotalPages();
		System.out.println(t);
		for (OrdersVO vo : pages.getRows()) {
			System.out.println(vo.getOrders_id() + "   " + vo.getCustomer_id());
		}
	}
*/
/*	
public static void main(String[] args) {
		OrderServiceImpl oll=new OrderServiceImpl();
		SearchVO svo=new SearchVO();
		svo.setCustomer_id("10003");
		svo.setBeginDate("01/01/1999");
		svo.setEndDate("01/01/2111");
		svo.setStatus("未支付");
		//List<OrdersVO> list = oll.page(svo);
		//System.out.println(list.size());
		PageVO<OrdersVO> list = oll.list(4, svo);
		System.out.println(list.getRows().size());
	}*/
 
@Override
public List<OrdersVO> selectList() {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<OrdersVO> selectList(PageVO<OrdersVO> pvo) {
	//PageVO<OrdersVO> pvo = new PageVO<OrdersVO>();
	OrdersVO ovo=null;
	int Beginnumber = pvo.getPageSize()*pvo.getCurrentPages()-pvo.getPageSize()+1;
	int Endnumber = pvo.getPageSize()*pvo.getCurrentPages();
	
	List<Orders> list = odao.selectList(Beginnumber, Endnumber);
	List<OrdersVO> ovo1 = new ArrayList<OrdersVO>();
	OrdersVO tempovo=null;
	for(Orders e:list){
	tempovo= new OrdersVO();
	tempovo.setConsignee_id(e.getConsignee_id()+"");
	tempovo.setCustomer_id(e.getCustomer_id()+"");
	tempovo.setOrders_id(e.getOrders_id()+"");
	tempovo.setOrders_no(e.getOrders_no());
	tempovo.setOrders_pay(e.getOrders_pay()+"");
	tempovo.setOrders_time(e.getOrders_time().toString());
	tempovo.setPaytype(e.getPaytype());
	tempovo.setStatus(e.getStatus());
	
	ovo1.add(tempovo);
	}
	return ovo1;
}

@Override
public int total() {
	int total=0;
	OrderDAO od= new OrderDAOImpl();
	total = od.total();
    
	return total;
}

@Override
public boolean deletes(int orders_id) {
	boolean aa=odao.delete(orders_id);
	return aa;
}

@Override
public List<OrdersVO> selectByTime(String timeBegin, String timeEnd) {
	List<OrdersVO> ordersVoList = new ArrayList<OrdersVO>();
	List<Orders> selectByTime = odao.selectByTime(timeBegin, timeEnd);
	for (Orders e : selectByTime) {
		OrdersVO ordersVO = new OrdersVO();
		try {
			BeanUtils.copyProperties(ordersVO, e);
			ordersVoList.add(ordersVO);
		} catch (IllegalAccessException | InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	return ordersVoList;
}
public static void main(String[] args) {
	OrderService os = new OrderServiceImpl();
}
	
}
