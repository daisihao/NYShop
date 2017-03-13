package edu.hgsf.nanyu.service;


import edu.hgsf.nanyu.view.CustomerVO;
import edu.hgsf.nanyu.view.OrdersVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.SearchVO;
import edu.hgsf.nanyu.view.UserWelVO;



public interface CustomerService {
  boolean regverify(CustomerVO cvo);
  boolean reg(CustomerVO cvo);
  boolean xiuserpwd(String account,String newpwd);//重新设置密码
  public CustomerVO  userlogin(String account,String pwd);//登录
  CustomerVO retpwdcut(String account);//找寻密码 
  UserWelVO searchScore(int customer_id); //---查询用户积分和订单总数---  作者==代思豪， 如有需要请联系
  CustomerVO searchInfo(CustomerVO cvo);
  CustomerVO searchInfo(int customer_id);
  PageVO<OrdersVO> page(int current,  SearchVO svo);
  
  boolean update(String realname,String mobile,String telphone,String email,String qq,int customer_id);
  
  boolean udateImage(String path,int customer_id);
  
  boolean update(String email,String account,String pwd);
  
  String searchPwd(String email,String account);
}
