package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.Article_CommentDAO;
import edu.hgsf.nanyu.entity.Article_Comment;
import edu.hgsf.nanyu.util.DBUtil;

public class Article_CommentDAOImpl implements Article_CommentDAO {
    
	Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
	
	@Override
	public void insertArticleByComment(int ID, int customer_id, String article_comment_content) {
		
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_ARTICLECOMMENT_SAVE);
			pstmt.setInt(1, customer_id);
			pstmt.setInt(2, ID);
			pstmt.setString(3, article_comment_content);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(pstmt, conn);
		}
	}

	@Override
	public List<Article_Comment> searchComment(int ID,int current,int pageSize) {
		// TODO Auto-generated method stub
		List<Article_Comment> list=new ArrayList<Article_Comment>();
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_SEARCHCOMMENT_PAGE);
			pstmt.setInt(1, ID);
			pstmt.setInt(2, (current-1)*pageSize);
			pstmt.setInt(3, current*pageSize);
			/*pstmt.setInt(4, current);
			pstmt.setInt(5, pageSize);*/
			rs=pstmt.executeQuery();
			while(rs.next()){
				Article_Comment ac=new Article_Comment();
				ac.setID(rs.getInt("article_id"));
				ac.setCustomer_id(rs.getInt("Customer_id"));
				ac.setArticle_comment_content(rs.getString("article_comment_content"));
				ac.setArticle_comment_time(rs.getString("article_comment_time"));
				list.add(ac);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstmt, conn);
		}
		return list;
	}

	@Override
	public int total(int ID) {
		// TODO Auto-generated method stub
		int count=0;
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_SEARCHCOMMENT_COUNT);
			pstmt.setInt(1, ID);
			rs=pstmt.executeQuery();
			while(rs.next()){
				count=rs.getInt("total");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstmt, conn);
		}
		return count;
	}
}
