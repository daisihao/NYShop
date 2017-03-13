package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Admin;
import edu.hgsf.nanyu.entity.Article;
import edu.hgsf.nanyu.view.AdminVO;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.ArticleVO;

public interface ArticleDAO {

	public static final String SQL_ARTICLE_SEARCH_ID="SELECT * FROM ARTICLE WHERE ARTICLE_ID=?";
	public static final String SQL_ARTICLE_SEARCH_ALL_WEB="SELECT ARTICLE_ID,ADMIN_ID,ARTICLE_TITLE,ARTICLE_AUTHOR,DATE_FORMAT(ARTICLE_DATE,'%Y-%m-%d %H:%i:%S') AS ARTICLE_DATE,ARTICLE_CONTENT FROM ARTICLE ORDER BY ARTICLE_DATE DESC";
	public static final String SQL_ARTICLE_SEARCH="SELECT ARTICLE_ID,ADMIN_ID,ARTICLE_TITLE,ARTICLE_AUTHOR,DATE_FORMAT(ARTICLE_DATE,'%Y-%m-%d %H:%i:%S') AS ARTICLE_DATE,ARTICLE_CONTENT FROM ARTICLE WHERE ARTICLE_TITLE LIKE ? ORDER BY ARTICLE_DATE DESC";
	public static final String SQL_ARTICLE_COUNT="SELECT COUNT(*) TOTAL FROM ARTICLE";                             
	//public static final String SQL_ARTICLE_SELECT_PAGE="SELECT  FROM (SELECT T.*,ROWNUM RN FROM ARTICLE T ) TT WHERE RN>(?-1)*10 AND RN<=?*10";
	public static final String SQL_ARTICLE_SAVE="UPDATE ARTICLE SET ARTICLE_COMMENT=? WHERE ARTICLE_ID=?";
	
	public static final String SQL_ARTICLE_SEARCH_ALL="SELECT ARTICLE_ID,ADMIN_ID,ARTICLE_TITLE,ARTICLE_AUTHOR,DATE_FORMAT(ARTICLE_DATE,'%Y-%m-%d %H:%i:%S') AS ARTICLE_DATE,ARTICLE_CONTENT FROM ARTICLE ORDER BY ARTICLE_DATE DESC LIMIT ?,? ";
	public static final String SQL_ARTICLE_INSERT="INSERT INTO ARTICLE(ARTICLE_DATE,ADMIN_ID,ARTICLE_TITLE,ARTICLE_AUTHOR,ARTICLE_CONTENT) VALUES(NOW(),?,?,?,?)";
	public static final String SQL_ARTICLE_DELETE="DELETE FROM ARTICLE WHERE ARTICLE_ID=?";
	public static final String SQL_ARTICLE_UPDATE="UPDATE ARTICLE SET ADMIN_ID=?,ARTICLE_TITLE=?,ARTICLE_AUTHOR=?,ARTICLE_DATE=NOW(),ARTICLE_CONTENT=? WHERE ARTICLE_ID=?";
    public static final String SQL_SHOWCONTENT="SELECT * FROM ARTICLE WHERE ARTICLE_ID=?";
	public static final String SQL_ADMIN_SEARCH="SELECT * FROM ADMIN WHERE ADMIN_ID=?";
    List<Article> showArticles_web();
    Article findArticleByTitle(int ID);

	List<Article> showArticles(ArticleVO avo);
	List<Article> showArticles(ArticlePageVO apvo);
	Admin findAdminName(AdminVO avo);
	Article showContent(ArticleVO avo);
	void saveArticleByComment(int ID,String comment);
	void insertArticle(ArticleVO avo);
	void updateArticle(ArticleVO avo);
	void deleteArticle(ArticleVO avo);
    int articleTotal();
}
