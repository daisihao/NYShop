package edu.hgsf.nanyu.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.ProductCommentDAO;
import edu.hgsf.nanyu.entity.ProductComment;
import edu.hgsf.nanyu.entity.Product_Comment_View;
import edu.hgsf.nanyu.util.DBUtil;
public class Product_commentDao implements ProductCommentDAO {

	

	@Override
	public void delete(int comment_id) {

	}

	@Override
	public void delete() {

	}

	@Override
	public void update(ProductComment entity) {

	}
     
	//查询一条
	@Override//SQL_PC_SELECT_LIST
	public ProductComment selectOne(int comment_id) {
		ProductComment pro=null;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PC_SELECT_ONE);
			pstat.setInt(1, comment_id);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new ProductComment();
			   pro.setComment_date(rs.getString("comment_date"));
			    pro.setComment_id(rs.getInt("comment_id"));
			    pro.setComment_num(rs.getInt("comment_num"));
			    pro.setComment_produte(rs.getString("comment_produte"));
			    pro.setComment_type(rs.getString("comment_type"));
			    pro.setCustomer_id(rs.getInt("customer_id"));
			    pro.setProduct_id(rs.getInt("product_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return pro;
	}
    
	/*//查询产品评论这个集合
	@Override
	public List<ProductComment> selectList() {
		ProductComment procom=null;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		List<ProductComment> elist=null;
			//获得连接
			try {
				
				conn=DBUtil.getConnection();
				//创建预处理语句对象
				pstat=conn.prepareStatement(SQL_PC_SELECT_LIST);
				 rs=pstat.executeQuery();
				 System.out.println(rs);
				 elist=new ArrayList<ProductComment>();
				//处理结果集
				while(rs.next()){
					//每当有一行记录时，则创建对应的一个实体
					//elist=new ArrayList<ProductComment>();
					procom=new ProductComment();
					procom.setComment_date(rs.getString("comment_date"));
					procom.setComment_id(rs.getInt("comment_id"));
				    procom.setComment_num(rs.getInt("comment_num"));
				    procom.setComment_produte(rs.getString("comment_produte"));
				    procom.setComment_type(rs.getString("comment_type"));
				    procom.setCustomer_id(rs.getInt("customer_id"));
				    procom.setProduct_id(rs.getInt("product_id"));
					//将实体放入集合
					elist.add(procom);
					
				}
				
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}finally{
				DBUtil.closeConnection(rs, pstat, conn);
			}
			System.out.println(elist.size());
			return elist;
	}*/
    
	//插入评论
	@Override
	public void insert(int product_id, int customer_id, String comment_produte) {
		Connection conn=null;
		PreparedStatement pstat=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PC_INSERT);
			pstat.setInt(1, product_id);
			pstat.setInt(2, customer_id);
			pstat.setString(3, comment_produte);
			System.out.println(pstat.executeUpdate()+"////////////////1111");
			//rs=pstat.executeQuery();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection( pstat, conn);
		}
		
		
	}
	
	//评论表的总条数
	@Override
	public int getTotal(int product_id) {
		Connection conn=DBUtil.getConnection();
		PreparedStatement past=null;
		ResultSet rs=null;
		String sql = "SELECT * FROM PRODUCT_COMMENT_VIEW WHERE PRODUCT_ID=?";
		int total = 0;
		try {
			past = conn.prepareStatement(sql);
			past.setInt(1,product_id);
			rs = past.executeQuery();
			while(rs.next()){
				total = rs.getRow();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeConnection(rs, past, conn);
		}
		return total;
	}
	
   //分页查询
	@Override
	public List<Product_Comment_View> selectPage(int current, int pageSize,int product_id) {
		List<Product_Comment_View> plist=new ArrayList<Product_Comment_View>();
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Product_Comment_View pro=null;
		int cu1=(current-1)*pageSize;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_COMMENT_SELECT_PAGE);
			pstat.setInt(1, product_id);
			pstat.setInt(2, cu1);
			pstat.setInt(3, pageSize);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product_Comment_View();
				pro.setComment_date(rs.getString("comment_date"));
				pro.setComment_produte(rs.getString("comment_produte"));
			    pro.setAccount(rs.getString("account"));
				plist.add(pro);	
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return plist;
	}
	public static void main(String[] args) {
		ProductCommentDAO dao=new Product_commentDao();
		//测分页
	/*	List<Product_Comment_View> list = dao.selectPage(1, 1,1);
		for(Product_Comment_View e:list){
			System.out.println(e.getComment_produte()+" "+e.getComment_date());
		}*/
		//测记录条数
		//System.out.println(dao.getTotal(1));
		//测选择一条
		/*ProductComment pro=dao.selectOne(162);
		System.out.println(pro.getComment_produte());*/
		//测插入一条记录
		//dao.insert(1, 10002, "7月301058fen");
	
	}
}
