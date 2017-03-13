package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Customer;
import edu.hgsf.nanyu.view.CustomerVO;

public interface CustomerDAO {
	public static final String SQL_CUSTOMER_INSERT="INSERT INTO CUSTOMER VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	public static final String SQL_CUSTOMER_DELETE_ONE="DELETE FROM CUSTOMER WHERE CUSTOMER_ID=?";
	public static final String SQL_CUSTOMER_DELETE_ALL="DELETE FROM CUSTOMER";
	
	public static final String SQL_CUSTOMER_UPDATE="UPDATE CUSTOMER SET CUSTOMER_ID=?,ACCOUNT=?,REALNAME=?,SEX=?,BIRTH=?,PWD=?,PWD_QUES=?,PWD_ANS=?,PIC=?,"+
								"MOBILE=?,TELPHONE=?,TELPHONE=?,EMAIL=?,SCORE=?,STATUS=?,REGDATE=?,LOGINDATE=?,LAST_IP=?";
	
	public static final String SQL_CUSTOMER_SELECT_ONE="SELECT * FROM CUSTOMER WHERE CUSTOMER_ID=?";
	public static final String SQL_CUSTOMER_SELECT_LIST="SELECT * FROM CUSTOMER";
	public static final String SQL_CUSTOMER_UPDATE_R="UPDATE CUSTOMER SET REALNAME=?,MOBILE=?,TELPHONE=?,EMAIL=?,QQ=? WHERE CUSTOMER_ID=?";
	public static final String SQL_CUSTOMER_UPDATE_I="UPDATE CUSTOMER SET PIC=? WHERE CUSTOMER_ID=?";
	public static final String SQL_CUSTOMER_UPDATE_P="UPDATE CUSTOMER SET PWD=？ WHERE ACCOUNT=? AND EMAIL=?";
	public static final String SQL_CUSTOMER_SELECT_P="SELECT PWD FROM CUSTOMER  WHERE ACCOUNT=? AND EMAIL=?";
	
	String SQL_SCLECT="SELECT * FROM CUSTOMER WHERE ACCOUNT=?";
	//用户注册
	public static final String SQL_CUSTOMER_REG="INSERT INTO CUSTOMER( ACCOUNT, PWD, PWD_QUES, PWD_ANS) VALUES  (?,?,?,?)";
	public static final String SQL_CUSTOMER_UPDATE_PWD="UPDATE CUSTOMER SET PWD = ? WHERE ACCOUNT= ?";//修改密码
	public Customer userloginsearch(String account);//用户登录
	
	public boolean regsearch(String account);//查询是否存在此用户
	boolean pwdretnew(String account,String pwd);//重新设置密码
	void insert(Customer entity);
	public boolean regverify(String account);//查询此用户是否存在
	public boolean reg(CustomerVO cvo);//用户注册
	void delete(int customer_id);
	void delete();
	
	boolean update(String realname,String mobile,String telphone,String email,String qq,int customer_id);
	void update(Customer entity);
	
	boolean updateImage(int customer_id,String path);
	
	boolean updatePwd(String email,String account,String pwd);
	
	String selectPwd(String email,String account);
	
	Customer selectOne(int customer_id);
	List<Customer> selectList();
}
