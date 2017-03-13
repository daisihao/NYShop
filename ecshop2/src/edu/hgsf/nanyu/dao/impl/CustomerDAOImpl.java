package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import edu.hgsf.nanyu.dao.CustomerDAO;
import edu.hgsf.nanyu.entity.Customer;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.CustomerVO;

public class CustomerDAOImpl implements CustomerDAO {

	Connection conn=null;
	PreparedStatement pstat=null;
	ResultSet rs=null;
	@Override
	//通过用户查询客户信息
	public Customer userloginsearch(String account) {
		
		Customer custom=null;
		conn=DBUtil.getConnection();
		
		try {
			pstat=conn.prepareStatement(SQL_SCLECT);
			 pstat.setString(1, account);
				rs=pstat.executeQuery();
				
				if(rs.next()){
					custom=new Customer();
					custom.setAccount(rs.getString("account"));
					custom.setPwd(rs.getString("pwd"));
					custom.setCustomer_id(rs.getInt("customer_id"));
					custom.setRealname(rs.getString("realname"));
					custom.setPwd_ques(rs.getString("pwd_ques"));
					custom.setPwd_ans(rs.getString("pwd_ans"));
				}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return custom;
	}

	@Override
	public void insert(Customer entity) {
		// TODO 自动生成的方法存根

	}

	@Override
	public void delete(int customer_id) {
		// TODO 自动生成的方法存根

	}

	@Override
	public void delete() {
		// TODO 自动生成的方法存根

	}
	
	@Override
	public void update(Customer entity) {
		// TODO 自动生成的方法存根
		
	}
	
	//注册时查询是否已存在此用户
	public boolean regverify(String account) {
		// TODO Auto-generated method stub
		boolean uhave=false;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_SCLECT);
			 pstat.setString(1, account);
				rs=pstat.executeQuery();
				if(rs.next()){
					uhave=true;
				}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return uhave;
	}

	@Override
	public boolean reg(CustomerVO cvo) {
		// TODO Auto-generated method stub
		boolean boo=false;
		try {
			 conn=DBUtil.getConnection();
			 pstat=conn.prepareStatement(SQL_CUSTOMER_REG);
			 pstat.setString(1, cvo.getAccount());
			 pstat.setString(2, cvo.getPwd());
			 pstat.setString(3, cvo.getPwd_ques());
			 pstat.setString(4, cvo.getPwd_ans());
			 int i=pstat.executeUpdate();
				if (i==1) {
					boo=true;
				}else{
					boo=false;
				}
				
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return boo;
	}
	
	@Override
	/*
	 * 得到当前用户id的所有信息
	 * 作者=代思豪 如有需要更改请联系
	 * */
	public Customer selectOne(int customer_id) {
		Customer cus=new Customer();
		conn=DBUtil.getConnection();
	
	    try {
			pstat=conn.prepareStatement(SQL_CUSTOMER_SELECT_ONE);
			pstat.setInt(1, customer_id);
			rs=pstat.executeQuery();

			
			while(rs.next()){
				cus.setAccount(rs.getString("account"));
				cus.setRealname(rs.getString("realname"));
				//cus.setBirth(rs.getDate("birth"));
				cus.setSex(rs.getString("sex"));
				cus.setPic(rs.getString("pic"));
				cus.setEmail(rs.getString("email"));
				cus.setQq(rs.getString("qq"));
				cus.setTelphone(rs.getString("telphone"));
				cus.setMobile(rs.getString("mobile"));	
				cus.setScore(rs.getInt("score"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
			
		return cus;
	}

	@Override
	public List<Customer> selectList() {
		// TODO 自动生成的方法存根
		return null;
	}

	//查询是否存在此用户
	public boolean regsearch(String account) {
		boolean have=false;
		conn=DBUtil.getConnection();
		try {
			pstat=conn.prepareStatement(SQL_SCLECT);
			 pstat.setString(1, account);
			 rs=pstat.executeQuery();
			 if(rs.next()){
				 have=true;
			 }
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return have;
	}

	@Override
	//修改密码
	public boolean pwdretnew(String account, String pwd) {
		boolean newpwdca=false;
		conn=DBUtil.getConnection();
		try {
			pstat=conn.prepareStatement(SQL_CUSTOMER_UPDATE_PWD);
			 pstat.setString(1, pwd);
			 pstat.setString(2, account);
			 int i=pstat.executeUpdate();
			 if(i==1){
				 newpwdca=true;
				}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(pstat, conn);
		}
		return newpwdca;
	}

	@Override
	/*
	 * 通过用户id来跟新用户的信息
	 * 
	 * 作者=代思豪，如有需要请联系
	 * */
	
	public boolean update(String realname,String mobile,String telphone,String email,String qq,int customer_id) {
		
		    conn=DBUtil.getConnection();
	
		    boolean boo = false;
			try {
				pstat=conn.prepareStatement(SQL_CUSTOMER_UPDATE_R);
				
				pstat.setString(1, realname);
				pstat.setString(2, mobile);
				pstat.setString(3, telphone);
				pstat.setString(4, email);
				pstat.setString(5, qq);
				pstat.setInt(6, customer_id);
				pstat.executeUpdate();
				
				boo=true;
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				DBUtil.closeConnection(pstat, conn);
			}
	      return boo;
    }

	@Override
	public boolean updateImage(int customer_id, String path) {
		/*
		 * 通过用户id和path更新用户头像
		 * 
		 * 作者=代思豪，如有需要请联系
		 * */
		conn=DBUtil.getConnection();
		
	    boolean boo = false;
	    
	    try {
			pstat=conn.prepareStatement(SQL_CUSTOMER_UPDATE_I);
			
			pstat.setString(1,path );
			pstat.setInt(2, customer_id);
			pstat.executeUpdate();
			boo=true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(pstat, conn);
		}
		return boo;
		
	}

	@Override
	public boolean updatePwd(String email, String account, String pwd) {
		/*
		 * 通过邮箱和用户名设置新密码
		 * 
		 * 作者=代思豪，如有需要请联系
		 * */
		conn=DBUtil.getConnection();
		
	    boolean boo = false;
	    
	    try {
			pstat=conn.prepareStatement(SQL_CUSTOMER_UPDATE_P);
			
			pstat.setString(1, pwd);
			pstat.setString(2, account);
			pstat.setString(3, email);
			pstat.executeQuery();
			boo=true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(pstat, conn);
		}
		return boo;
	}

	@Override
	public String selectPwd(String email, String account) {
		/*
		 * 通过邮箱和用户名设置新密码
		 * 
		 * 作者=代思豪，如有需要请联系
		 * */
		conn=DBUtil.getConnection();
		
	    String pwd=null;
	    
	    try {
			pstat=conn.prepareStatement(SQL_CUSTOMER_SELECT_P);
			
			pstat.setString(1, account);
			pstat.setString(2, email);
			rs=pstat.executeQuery();
			while(rs.next()){
			pwd = rs.getString("pwd");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
	    
		return pwd;
	}
	
/*	
	public static void main(String[] args) {
		CustomerDAOImpl cll=new CustomerDAOImpl();
		boolean b = cll.update("代思豪", "13277418168", "13277418168", "798814330@qq.com", "798814330", 10020);
		System.out.println(b);
		
	}*/
	
}
