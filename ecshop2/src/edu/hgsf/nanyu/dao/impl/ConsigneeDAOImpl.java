package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.ConsigneeDAO;
import edu.hgsf.nanyu.entity.Consignee;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.ConsigneeVO;

public class ConsigneeDAOImpl implements ConsigneeDAO {
	
	ResultSet rs;
	PreparedStatement pstat;
	@Override
	public Consignee selectOne(ConsigneeVO c) {
		Consignee consignee=new Consignee();
		
		Connection conn = DBUtil.getConnection();
		try {
			pstat= conn.prepareStatement(ConsigneeDAO.SQL_CONSIGNEE_SELECT_ONE);
			pstat.setInt(1, Integer.parseInt(c.getConsignee_id()));
			rs = pstat.executeQuery();
			while(rs.next()){
				
				consignee.setConsignee_id(rs.getInt("CONSIGNEE_ID"));
				consignee.setCustomer_id(rs.getInt("CUSTOMER_ID"));
				consignee.setName(rs.getString("NAME"));
				consignee.setAddress(rs.getString("ADDRESS"));
				consignee.setEmail(rs.getString("EMAIL"));
				consignee.setZipcode(rs.getString("ZIPCODE"));
				consignee.setMobilenum(rs.getString("MOBILENUM"));
				consignee.setPhonenum(rs.getString("PHONENUM"));
				consignee.setSignbuilding(rs.getString("SIGNBUILDING"));
				consignee.setBesttime(rs.getString("BESTTIME"));
				
			}
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return consignee;
	}
	@Override
	public List<Consignee> selectAll(ConsigneeVO c) {
		List<Consignee> listconsignee =new ArrayList<Consignee>();
		Consignee consignee=null;
		
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstat = conn.prepareStatement(ConsigneeDAO.SQL_CONSIGNEE_SELECT);
			pstat.setInt(1, Integer.parseInt(c.getCustomer_id()));
			ResultSet rs = pstat.executeQuery();
			while(rs.next()){
				consignee=new Consignee();
				consignee.setConsignee_id(rs.getInt("CONSIGNEE_ID"));
				consignee.setCustomer_id(rs.getInt("CUSTOMER_ID"));
				consignee.setName(rs.getString("NAME"));
				consignee.setAddress(rs.getString("ADDRESS"));
				consignee.setEmail(rs.getString("EMAIL"));
				consignee.setZipcode(rs.getString("ZIPCODE"));
				consignee.setMobilenum(rs.getString("MOBILENUM"));
				consignee.setPhonenum(rs.getString("PHONENUM"));
				consignee.setSignbuilding(rs.getString("SIGNBUILDING"));
				consignee.setBesttime(rs.getString("BESTTIME"));
				listconsignee.add(consignee);
			}
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return listconsignee;
	}
	@Override
	public Consignee select(ConsigneeVO c) {
		Consignee consignee=new Consignee();
		
		Connection conn = DBUtil.getConnection();
		try {
			PreparedStatement pstat = conn.prepareStatement(ConsigneeDAO.SQL_CONSIGNEE_SELECT);
			pstat.setInt(1, Integer.parseInt(c.getCustomer_id()));
			ResultSet rs = pstat.executeQuery();
			while(rs.next()){
				consignee.setConsignee_id(rs.getInt("CONSIGNEE_ID"));
				consignee.setCustomer_id(rs.getInt("CUSTOMER_ID"));
				consignee.setName(rs.getString("NAME"));
				consignee.setAddress(rs.getString("ADDRESS"));
				consignee.setEmail(rs.getString("EMAIL"));
				consignee.setZipcode(rs.getString("ZIPCODE"));
				consignee.setMobilenum(rs.getString("MOBILENUM"));
				consignee.setPhonenum(rs.getString("PHONENUM"));
				consignee.setSignbuilding(rs.getString("SIGNBUILDING"));
				consignee.setBesttime(rs.getString("BESTTIME"));
			}
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return consignee;
	}

	@Override
	public boolean insert(ConsigneeVO c) {
		boolean flag=false;
		
		Connection conn = DBUtil.getConnection();
		
		
		try {
			PreparedStatement pstat = conn.prepareStatement(ConsigneeDAO.SQL_CONSIGNEE_INSERT);
			pstat.setInt(1, Integer.parseInt(c.getCustomer_id()));
			pstat.setString(2, c.getName());
			pstat.setString(3, c.getAddress());
			pstat.setString(4, c.getEmail());
			pstat.setString(5, c.getZipcode());
			pstat.setString(6, c.getMobilenum());
			pstat.setString(7, c.getPhonenum());
			pstat.setString(8, c.getSignbuilding());
			pstat.setString(9, c.getBesttime());
			int i = pstat.executeUpdate();
			
			flag=true;
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return flag;
	}
/*	public static void main(String[] args) {
		ConsigneeDAO cc=new ConsigneeDAOImpl();
		ConsigneeVO c=new ConsigneeVO();
		c.setCustomer_id("10003");
		Consignee ccc=cc.select(c);
		System.out.println(ccc.getName()+ccc.getAddress());
		System.out.println(ccc.getZipcode());
		c.setName("gyc");
		c.setAddress("黄冈师范学院");
		c.setMobilenum("13330000");
		c.setPhonenum("123123");
		
		System.out.println(cc.insert(c));
	}*/
	
	
	@Override
	public Consignee select(int customer_id) {
		/*
		 * 通过当前用户id来查询用户的收获地址
		 * 作者=代思豪 ，如有需要请联系
		 * */
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		
		Consignee con=null;
		
		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_CONSIGNEE_SELECT);
			pstat.setInt(1, customer_id);
			rs=pstat.executeQuery();
			
			
			while(rs.next()){
				con=new Consignee();
				con.setConsignee_id(rs.getInt("CONSIGNEE_ID"));
				con.setCustomer_id(rs.getInt("CUSTOMER_ID"));
				con.setName(rs.getString("NAME"));
				con.setAddress(rs.getString("ADDRESS"));
				con.setEmail(rs.getString("EMAIL"));
				con.setZipcode(rs.getString("ZIPCODE"));
				con.setMobilenum(rs.getString("MOBILENUM"));
				con.setPhonenum(rs.getString("PHONENUM"));
				con.setSignbuilding(rs.getString("SIGNBUILDING"));
				con.setBesttime(rs.getString("BESTTIME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtil.closeConnection(rs, pstat, conn);
		}
				
		return con;
	}
	@Override
	public boolean deleteOne(int consignee_id) {
		
			Connection conn = null;
			PreparedStatement pstat = null;
			ResultSet rs=null;
			
			boolean boo=false;
			
			try {
				conn = DBUtil.getConnection();
				pstat = conn.prepareStatement(SQL_CONSIGNEE_DELETE);
				pstat.setInt(1, consignee_id);
				pstat.executeUpdate();
				boo=true;

			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				DBUtil.closeConnection(rs, pstat, conn);
			}
					
			return boo;
	}
	
	
	
	/*public static void main(String[] args) {
		ConsigneeDAOImpl cll=new ConsigneeDAOImpl();
		Consignee select = cll.select(10020);
		System.out.println(select.getAddress());
	}*/

	public static void main(String[] args) {
		ConsigneeDAO test=new ConsigneeDAOImpl();
		ConsigneeVO cvo=new ConsigneeVO();
		cvo.setCustomer_id(10170+"");
		List<Consignee> list=test.selectAll(cvo);
		System.out.println(list.size());
		for(Consignee e:list){
			System.out.println(e.getName());
		}
		cvo.setName("fanzhixin");
		cvo.setAddress("新港二路");
		cvo.setBesttime("");
		cvo.setEmail("");
		cvo.setMobilenum("");
		cvo.setPhonenum("");
		cvo.setSignbuilding("");
		cvo.setZipcode("");
		
		test.insert(cvo);
	}
/*	public static void main(String[] args) {
	ConsigneeDAOImpl cll=new ConsigneeDAOImpl();
	boolean b = cll.deleteOne(107);
	System.out.println(b);
	}*/
}
