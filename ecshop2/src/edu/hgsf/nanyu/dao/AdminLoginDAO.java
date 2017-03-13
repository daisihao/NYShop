package edu.hgsf.nanyu.dao;


import edu.hgsf.nanyu.entity.Admin;

public interface AdminLoginDAO {
	String SQL_ADMIN_SELECT="SELECT * FROM ADMIN WHERE username=? AND pwd=?";
	public Admin findAdminBy(String name,String pwd);

}
