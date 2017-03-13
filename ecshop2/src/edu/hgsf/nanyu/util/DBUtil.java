package edu.hgsf.nanyu.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;




public class DBUtil {
	//创建数据库端口
	public static Connection conn=null;
	public DBUtil() {
		super();
		// TODO 自动生成的构造函数存根
	}
	//建立连接
    public static Connection getConnection(){
    	 Connection conn=null;
    	 String driverClassName="";
		 String url="";
		 String username="";
		 String password="";
		 Properties pops=new Properties();
			try {
				pops.load(DBUtil.class.getClassLoader().getResourceAsStream("edu/hgsf/nanyu/conf/db.properties"));
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			driverClassName=pops.getProperty("driverClassName");
			url=pops.getProperty("url");
	        username=pops.getProperty("username");
	        password=pops.getProperty("password");
	    	try {
				Class.forName(driverClassName);
				conn=DriverManager.getConnection(url, username, password);
			} catch (ClassNotFoundException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
    	return conn;
    }
	//关闭连接
    public static void closeConnection(ResultSet rs, PreparedStatement pstat, Connection conn){
		try {
			if(rs!=null)rs.close();
			if(pstat!=null)pstat.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
    
    public static void closeConnection(PreparedStatement pstat, Connection conn){
		try {
			if(pstat!=null)pstat.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//测试连接代码
    public static void main(String[] args) {
		System.out.println(DBUtil.getConnection());
	}

}
