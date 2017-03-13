package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Article_Comment;

public interface Article_CommentDAO {
	
	public static final String SQL_ARTICLECOMMENT_SAVE="INSERT INTO ARTICLE_COMMENT (CUSTOMER_ID,ARTICLE_ID,ARTICLE_COMMENT_CONTENT,ARTICLE_COMMENT_TIME) VALUES (?,?,?,now())";
    public static final String SQL_SEARCHCOMMENT_PAGE="SELECT CUSTOMER_ID,ARTICLE_ID,ARTICLE_COMMENT_CONTENT,DATE_FORMAT(ARTICLE_COMMENT_TIME,'%Y-%m-%d %H:%I:%S') AS ARTICLE_COMMENT_TIME FROM ARTICLE_COMMENT WHERE ARTICLE_ID=? LIMIT ?,?";
	public static final String SQL_SEARCHCOMMENT_TOTAL="SELECT COUNT(*) TOTAL FROM ARTICLE_COMMENT";
    public static final String SQL_SEARCHCOMMENT_COUNT="SELECT COUNT(*) TOTAL FROM ARTICLE_COMMENT WHERE ARTICLE_ID=?";
	void insertArticleByComment(int ID,int customer_id,String article_comment_content);
	
	List<Article_Comment> searchComment(int ID,int current,int pageSize);
	int total(int ID);
}
