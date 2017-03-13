package edu.hgsf.nanyu.service.impl;



import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.ConsigneeDAO;
import edu.hgsf.nanyu.dao.impl.ConsigneeDAOImpl;
import edu.hgsf.nanyu.entity.Consignee;
import edu.hgsf.nanyu.service.ConsigneeService;
import edu.hgsf.nanyu.view.ConsigneeVO;

public class ConsigneeServiceImpl implements ConsigneeService {
	
	@Override
	public ConsigneeVO findConsigneeByid(ConsigneeVO c) {
		ConsigneeVO convo=new ConsigneeVO();
		ConsigneeDAO cdao=new ConsigneeDAOImpl();
		Consignee consignee = cdao.selectOne(c);
		try {
			BeanUtils.copyProperties(convo, consignee);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return convo;
	}
	@Override
	public List<ConsigneeVO> findAllConsignee(ConsigneeVO c) {
		List<ConsigneeVO> volist= new ArrayList<ConsigneeVO>();
		ConsigneeDAO cdao=new ConsigneeDAOImpl();
		
		List<Consignee> conlist=cdao.selectAll(c);
		System.out.println(conlist.size());
		ConsigneeVO consigneevo=null;
		for(Consignee con:conlist){
			consigneevo = new ConsigneeVO();
			try {
				BeanUtils.copyProperties(consigneevo, con);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			volist.add(consigneevo);
		}
		
		return volist;
	}
	
	@Override
	public ConsigneeVO findConsignee(ConsigneeVO c) {
		ConsigneeVO detailvo = new ConsigneeVO();
		ConsigneeDAO condao = new ConsigneeDAOImpl();
		Consignee consignee = condao.select(c);
				
		detailvo.setConsignee_id(consignee.getConsignee_id()+"");
		detailvo.setCustomer_id(consignee.getCustomer_id()+"");
		detailvo.setName(consignee.getName());
		detailvo.setAddress(consignee.getAddress());
		detailvo.setEmail(consignee.getEmail());
		detailvo.setZipcode(consignee.getZipcode());
		detailvo.setMobilenum(consignee.getMobilenum());
		detailvo.setPhonenum(consignee.getPhonenum());
		detailvo.setSignbuilding(consignee.getSignbuilding());
		detailvo.setBesttime(consignee.getBesttime());
		
		
		return detailvo;
	}

	@Override
	public boolean addConsignee(ConsigneeVO c) {
		boolean flag=false;
		ConsigneeDAO condao = new ConsigneeDAOImpl();
		flag=condao.insert(c);
		
		return flag;
	}

	@Override
	/*
	 * 通过当前用户id查询用户的收货地址
	 * 作者=代思豪，如有需要请联系
	 * */
	public ConsigneeVO findConsignee(int customer_id) {
		
		ConsigneeVO detailvo = new ConsigneeVO();
		ConsigneeDAO condao = new ConsigneeDAOImpl();
		
		Consignee consignee = condao.select(customer_id);
		
		if(consignee!=null){
		detailvo.setConsignee_id(consignee.getConsignee_id()+"");
		detailvo.setCustomer_id(consignee.getCustomer_id()+"");
		detailvo.setName(consignee.getName());
		detailvo.setAddress(consignee.getAddress());
		detailvo.setEmail(consignee.getEmail());
		detailvo.setZipcode(consignee.getZipcode());
		detailvo.setMobilenum(consignee.getMobilenum());
		detailvo.setPhonenum(consignee.getPhonenum());
		detailvo.setSignbuilding(consignee.getSignbuilding());
		detailvo.setBesttime(consignee.getBesttime());
			
		}
		return detailvo;
	}

/*	public static void main(String[] args) {
		ConsigneeService c = new ConsigneeServiceImpl();
		ConsigneeVO cvo = new ConsigneeVO();
		cvo.setCustomer_id("10004");
		cvo.setName("sss");
		cvo.setAddress("黄冈师范学院");
		cvo.setMobilenum("13330000");
		cvo.setPhonenum("123123");
		System.out.println(c.addConsignee(cvo));
		ConsigneeVO cdvo = c.findConsignee(cvo);
		System.out.println(cdvo.getName());
	}*/
	
	
	/*public static void main(String[] args) {
		ConsigneeServiceImpl cll=new ConsigneeServiceImpl();
		ConsigneeVO findConsignee = cll.findConsignee(10020);
		System.out.println(findConsignee.getBesttime());
		
	}
*/
/*	public static void main(String[] args) {
		ConsigneeService cs=new ConsigneeServiceImpl();
		ConsigneeVO c = new ConsigneeVO();
		c.setCustomer_id(10001+"");
		List<ConsigneeVO> findAllConsignee = cs.findAllConsignee(c);
		System.out.println(findAllConsignee.size());
		for(ConsigneeVO e:findAllConsignee){
			System.out.println(e.getConsignee_id());
		}
		
	}*/

	@Override
	public boolean deleteOne(int consignee_id) {
		
		boolean boo=false;
		ConsigneeDAO condao = new ConsigneeDAOImpl();
		condao.deleteOne(consignee_id);
		boo=true;
		return boo;
	}


	
/*	public static void main(String[] args) {
		ConsigneeService cs=new ConsigneeServiceImpl();
		boolean b = cs.deleteOne(108);
		System.out.println(b);
	}*/
}
