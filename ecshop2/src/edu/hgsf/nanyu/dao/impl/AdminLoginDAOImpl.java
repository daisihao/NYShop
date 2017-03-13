package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.hgsf.nanyu.dao.AdminLoginDAO;
import edu.hgsf.nanyu.entity.Admin;
import edu.hgsf.nanyu.util.DBUtil;

public class AdminLoginDAOImpl implements AdminLoginDAO{

	@Override
	public Admin findAdminBy(String name,String pwd) {
		Admin admin=null;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_ADMIN_SELECT);
			pstat.setString(1, name);
			pstat.setString(2, pwd);
			rs=pstat.executeQuery();
			while(rs.next()){
				admin=new Admin();
				admin.setAdminID(rs.getInt("admin_id"));
				admin.setUserName(rs.getString("username"));
				admin.setPwd(rs.getString("pwd"));
				admin.setMobilePhone(rs.getString("mobile"));
				admin.setLoginDate(rs.getString("logindate"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return admin;
	}
    
	/*public static void main(String[] args) {
		AdminLoginDAOImpl ald = new AdminLoginDAOImpl();
		Admin admin = ald.findAdminBy("guoyongchao", "gyc123");
		System.out.println(admin.getMobilePhone());
		System.out.println(admin.getLoginDate());
	}*/
}
