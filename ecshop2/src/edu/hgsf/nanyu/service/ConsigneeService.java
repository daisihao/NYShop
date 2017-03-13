package edu.hgsf.nanyu.service;

import java.util.List;

import edu.hgsf.nanyu.view.ConsigneeVO;

public interface ConsigneeService {
	

	ConsigneeVO findConsigneeByid(ConsigneeVO c);
	ConsigneeVO findConsignee(ConsigneeVO c);
	ConsigneeVO findConsignee(int customer_id);
	boolean addConsignee(ConsigneeVO c);
	List<ConsigneeVO> findAllConsignee (ConsigneeVO c);
	boolean deleteOne(int consignee_id);
}
