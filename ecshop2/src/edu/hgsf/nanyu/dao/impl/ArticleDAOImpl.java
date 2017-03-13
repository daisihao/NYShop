package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.ArticleDAO;
import edu.hgsf.nanyu.entity.Admin;
import edu.hgsf.nanyu.entity.Article;
import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.AdminVO;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.ArticleVO;

public class ArticleDAOImpl implements ArticleDAO {
    
	Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
	
    @Override
	public Article findArticleByTitle(int ID) {
		// TODO Auto-generated method stub
		Article article=new Article();
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_ARTICLE_SEARCH_ID);
			pstmt.setInt(1, ID);
			rs=pstmt.executeQuery();
			if(rs.next()){
				article.setTitle(rs.getString("article_title"));
				article.setAuthor(rs.getString("article_author"));
				article.setID(rs.getInt("article_id"));
				article.setContent(rs.getClob("article_content").getSubString((long)1, (int)rs.getClob("article_content").length()));
				article.setDate(rs.getString("article_date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//DBUtil.closeConnection(rs, pstmt, conn);
		return article;
	}


	@Override
	public void saveArticleByComment(int ID,String comment) {
		// TODO Auto-generated method stub
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_ARTICLE_SAVE);
			pstmt.setString(1, comment);
			pstmt.setInt(2, ID);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstmt, conn);
		}
		
	}

	@Override
	public List<Article> showArticles(ArticlePageVO apvo) {
		// TODO Auto-generated method stub
		List<Article> alist=new ArrayList<Article>();
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_SEARCH_ALL);
			pstmt.setInt(1, (apvo.getCurrent()-1)*apvo.getPageSize());
			pstmt.setInt(2, apvo.getPageSize());
			rs=pstmt.executeQuery();
			while(rs.next()){
				Article article=new Article();
				article.setID(rs.getInt("article_id"));
				article.setAdminID(rs.getInt("admin_id"));
				article.setTitle(rs.getString("article_title"));
				article.setAuthor(rs.getString("article_author"));
				article.setContent(rs.getString("article_content"));
				article.setDate(rs.getString("article_date"));
				alist.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
		return alist;
	}

	@Override
	public void insertArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_INSERT);
			pstmt.setInt(1, Integer.parseInt(avo.getAdminID()));
			pstmt.setString(2, avo.getTitle());
			pstmt.setString(3, avo.getAuthor());
			pstmt.setString(4, avo.getContent()); 
			pstmt.executeUpdate();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
	}

	@Override
	public void updateArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_UPDATE);
			pstmt.setInt(1, Integer.parseInt(avo.getAdminID()));
			pstmt.setString(2, avo.getTitle());
			pstmt.setString(3, avo.getAuthor());
			pstmt.setString(4, avo.getContent());
			pstmt.setInt(5, Integer.parseInt(avo.getID()));
			pstmt.executeUpdate();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        DBUtil.closeConnection(rs, pstmt, conn);
	}

	@Override
	public void deleteArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_DELETE);
			pstmt.setInt(1, Integer.parseInt(avo.getID()));
			pstmt.executeUpdate();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
	}

	@Override
	public List<Article> showArticles(ArticleVO avo) {
		// TODO Auto-generated method stub
		List<Article> alist=new ArrayList<Article>();
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_SEARCH);
			pstmt.setString(1, "%"+avo.getTitle()+"%");
			rs=pstmt.executeQuery();
			while(rs.next()){
				Article article=new Article();
				article.setID(rs.getInt("article_id"));
				article.setAdminID(rs.getInt("admin_id"));
				article.setTitle(rs.getString("article_title"));
				article.setAuthor(rs.getString("article_author"));
				article.setContent(rs.getString("article_content"));
				article.setDate(rs.getString("article_date"));
				alist.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
		return alist;
	}

	@Override
	public Article showContent(ArticleVO avo) {
		// TODO Auto-generated method stub
		Article article=new Article();
		conn=DBUtil.getConnection();
		try {
			pstmt=conn.prepareStatement(SQL_SHOWCONTENT);
			pstmt.setInt(1, Integer.parseInt(avo.getID()));
			rs=pstmt.executeQuery();
			if(rs.next()){
				article.setTitle(rs.getString("article_title"));
				article.setAuthor(rs.getString("article_author"));
				article.setID(rs.getInt("article_id"));
				article.setContent(rs.getString("article_content"));
				article.setDate(rs.getString("article_date"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
		return article;
	}

	@Override
	public Admin findAdminName(AdminVO avo) {
		// TODO Auto-generated method stub
		Admin admin=new Admin();
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ADMIN_SEARCH);
			pstmt.setInt(1, Integer.parseInt(avo.getAdminID()));
			rs=pstmt.executeQuery();
			while(rs.next()){
			  admin.setUserName(rs.getString("username"));			
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
		return admin;
	}

	@Override
	public int articleTotal() {
		// TODO Auto-generated method stub
		int total=0;
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_COUNT);
			rs=pstmt.executeQuery();
			while(rs.next()){
				total=rs.getInt("total");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return total;
	}
	@Override
	public List<Article> showArticles_web() {
		// TODO Auto-generated method stub
		List<Article> alist=new ArrayList<Article>();
		try {
			conn=DBUtil.getConnection();
			pstmt=conn.prepareStatement(SQL_ARTICLE_SEARCH_ALL_WEB);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Article article=new Article();
				article.setID(rs.getInt("article_id"));
				article.setAdminID(rs.getInt("admin_id"));
				article.setTitle(rs.getString("article_title"));
				article.setAuthor(rs.getString("article_author"));
				article.setContent(rs.getString("article_content"));
				article.setDate(rs.getString("article_date"));
				alist.add(article);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBUtil.closeConnection(rs, pstmt, conn);
		return alist;
	}

    /*public static void main(String[] args) {
		ArticleDAO adao=new ArticleDAOImpl();
		ArticleVO avo=new ArticleVO();
		avo.setTitle("四月");
		//avo.setTitle("8");
		List<Article> list=adao.showArticles(avo);
		System.out.println(list.size());
	}*/
}
