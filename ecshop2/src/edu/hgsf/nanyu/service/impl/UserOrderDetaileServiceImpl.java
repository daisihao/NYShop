package edu.hgsf.nanyu.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.OrderDetailDAO;
import edu.hgsf.nanyu.dao.impl.UserOrderDetailDAOImpl;
import edu.hgsf.nanyu.entity.OrderDetail;
import edu.hgsf.nanyu.service.OrderDetailService;
import edu.hgsf.nanyu.view.OrderdetailVO;

public class UserOrderDetaileServiceImpl implements OrderDetailService {

	@Override
	public boolean addOrderDetail(OrderdetailVO dvo) {
		boolean flag = false;

		OrderDetailDAO oddao = new UserOrderDetailDAOImpl();
		flag = oddao.insert(dvo);

		return flag;
	}

	@Override
	public List<OrderdetailVO> searchAll(String order_num) {
		List<OrderdetailVO> detailList = new ArrayList<OrderdetailVO>();
		OrderdetailVO detailvo = null;
		OrderDetailDAO oddao = new UserOrderDetailDAOImpl();

		List<OrderDetail> list = oddao.find(order_num);
		for (OrderDetail e : list) {
			detailvo = new OrderdetailVO();
			try {
				BeanUtils.copyProperties(detailvo, e);
			} catch (IllegalAccessException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			detailList.add(detailvo);
		}

		return detailList;
	}

	/*public static void main(String[] args) {
		OrderDetailService test=new UserOrderDetaileServiceImpl();
		System.out.println(test.searchAll("201507262124496352").size());
	}*/
}
