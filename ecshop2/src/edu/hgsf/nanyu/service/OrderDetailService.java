package edu.hgsf.nanyu.service;

import java.util.List;

import edu.hgsf.nanyu.entity.Consignee;
import edu.hgsf.nanyu.view.ConsigneeVO;
import edu.hgsf.nanyu.view.OrderdetailVO;

public interface OrderDetailService {
	boolean addOrderDetail(OrderdetailVO dvo);
	List<OrderdetailVO> searchAll(String order_num);
}
