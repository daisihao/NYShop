package edu.hgsf.nanyu.service.impl;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.CustomerDAO;
import edu.hgsf.nanyu.dao.OrderDAO;
import edu.hgsf.nanyu.dao.impl.CustomerDAOImpl;
import edu.hgsf.nanyu.dao.impl.OrderDAOImpl;
import edu.hgsf.nanyu.entity.Customer;
import edu.hgsf.nanyu.service.CustomerService;
import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;
import edu.hgsf.nanyu.view.UserWelVO;


public class CustomerServiceImpl implements CustomerService {
    CustomerDAO custdao=null;
    OrderDAO odao=null;
    
    public CustomerServiceImpl(){
    	custdao=new CustomerDAOImpl();
    	odao=new OrderDAOImpl();
    }
    //验证用户名是否已存在
    @Override
	public boolean regverify(CustomerVO cvo) {
		custdao=new CustomerDAOImpl();
		boolean boo=custdao.regverify(cvo.getAccount());
		return boo;
	}
    //注册用户
    @Override
	public boolean reg(CustomerVO cvo) {
		// TODO Auto-generated method stub
		CustomerDAO cudao=new CustomerDAOImpl();
		boolean chave=cudao.reg(cvo);
		return chave;
	}
	 //登录用户
	public CustomerVO userlogin(String account,String pwd) {
		CustomerVO cutvo=new CustomerVO();
	    custdao=new CustomerDAOImpl();
		//调用DAO层
		Customer cust=custdao.userloginsearch(account);
		
		//判断账户是否存在
		if(cust==null){
			cutvo=null;
		}else if(account.equals(cust.getAccount())&&pwd.equals(cust.getPwd())){
				try {
					BeanUtils.copyProperties(cutvo, cust);
				} catch (IllegalAccessException | InvocationTargetException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}
				
			}else{
				cutvo=null;
			}
		return cutvo;
	}
	@Override
	public UserWelVO searchScore(int customer_id) {
		/*
		 * ---查询用户积分和订单总数---  
		 * 作者==代思豪， 如有需要请联系
		 * */
		UserWelVO uwvo=new UserWelVO();
		//int customer_id=Integer.parseInt(cvo.getCustomer_id());
		int count=odao.countOrder(customer_id);
		Customer cus=custdao.selectOne(customer_id);
		int score=cus.getScore();
		
		uwvo.setScore(score+"");
		uwvo.setTotalOrder(count+"");
		
		
		return uwvo;
	}
	@Override
	public CustomerVO searchInfo(CustomerVO cvo) {
		/*
		 * ---通过用户当前id查询用户的所有信息，显示在用户中心里
		 * 作者=代思豪，如有需要，请联系
		 * */
		
		CustomerVO cusvo=new CustomerVO();
		int customer_id=Integer.parseInt(cvo.getCustomer_id());
		Customer customer = custdao.selectOne(customer_id);
		
		try {
			BeanUtils.copyProperties(cusvo, customer);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		return cusvo;
	}
	@Override
	public CustomerVO searchInfo(int customer_id) {
		/*
		 * ---通过用户当前id查询用户的所有信息，显示在用户中心里
		 * 作者=代思豪，如有需要，请联系
		 * */
		
		CustomerVO cusvo=new CustomerVO();
		Customer customer = custdao.selectOne(customer_id);

		try {
			BeanUtils.copyProperties(cusvo, customer);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		
		return cusvo;
	}

    //找寻密码//判断是否存在带回数据
	public CustomerVO retpwdcut(String account) {
		CustomerVO cutvo=new CustomerVO();
	    custdao=new CustomerDAOImpl();
	   //调用DAO层
	    Customer cust=custdao.userloginsearch(account);
	    if(cust==null){
	    	cutvo=null;
	    }else{
	    	try {
				BeanUtils.copyProperties(cutvo, cust);
			} catch (IllegalAccessException | InvocationTargetException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
	    }
	    
		return cutvo;
	}
	@Override
	//修改密码、重新设置密码
	public boolean xiuserpwd(String account,String newpwd) {
		custdao=new CustomerDAOImpl();
		boolean newpwdhave=custdao.pwdretnew(account,newpwd);
		return newpwdhave;
	}
	@Override
	public PageVO<OrdersVO> page(int current, SearchVO svo) {
		
		PageVO<OrdersVO> pvo=new PageVO<OrdersVO>();
		return null;
	}
	@Override
	public boolean update(String realname,String mobile,String telphone,String email,String qq,int customer_id) {
		/*
		 * 通过用户id修改用户信息
		 * 作者=代思豪，如有需要请联系
		 * */
		boolean boo=false;
		boo = custdao.update(realname, mobile, telphone, email, qq,customer_id);
		boo=true;
		return boo;
	}
	
	
/*	public static void main(String[] args) {
		CustomerServiceImpl cll=new CustomerServiceImpl();
		CustomerVO dd=cll.userlogin("chengsheng123", "123456");
		System.out.println(dd.getCustomer_id());
	
	}*/
	@Override
	public boolean udateImage(String path, int customer_id) {
		
		boolean boo=false;
		boo = custdao.updateImage(customer_id, path);
		boo=true;
		return boo;
	}
	@Override
	public boolean update(String email, String account, String pwd) {
		
		boolean boo=false;
		boo = custdao.updatePwd(email, account, pwd);
		boo=true;
		return boo;
	}
	@Override
	public String searchPwd(String email, String account) {
		String pwd=null;
	    pwd = custdao.selectPwd(email, account);
		return pwd;
	}
	
	
/*  public static void main(String[] args) {
		CustomerServiceImpl cll=new CustomerServiceImpl();
		boolean pwd = cll.update("代思豪", "13277418168", "13277418168", "798814330@qq.com", "798814330", 10020);
		System.out.println(pwd);
	}*/


}
