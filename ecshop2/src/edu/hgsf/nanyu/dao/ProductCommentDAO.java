package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.ProductComment;
import edu.hgsf.nanyu.entity.Product_Comment_View;

public interface ProductCommentDAO {
	public static final String SQL_PC_INSERT="INSERT INTO PRODUCT_COMMENT(PRODUCT_ID, CUSTOMER_ID,COMMENT_PRODUTE,COMMENT_DATE)VALUES(?,?,?,NOW())";
	
	public static final String SQL_PC_DELETE_ONE="DELETE FROM PRODUCT_COMMENT WHERE COMMENT_ID=?";
	public static final String SQL_PC_DELETE_ALL="DELETE FROM PRODUCT_COMMENT";
	
	public static final String SQL_PC_UPDATE="";
	
	public static final String SQL_PC_SELECT_ONE="SELECT COMMENT_ID,PRODUCT_ID,CUSTOMER_ID,COMMENT_NUM,DATE_FORMAT(COMMENT_DATE,'%Y-%m-%d %H:%I:%S') AS COMMENT_DATE,COMMENT_TYPE,COMMENT_PRODUTE FROM PRODUCT_COMMENT WHERE COMMENT_ID=?";
	public static final String SQL_PC_SELECT_LIST="SELECT COMMENT_ID,PRODUCT_ID,CUSTOMER_ID,COMMENT_NUM,DATE_FORMAT(COMMENT_DATE,'%Y-%m-%d %H:%I:%S') AS COMMENT_DATE,COMMENT_TYPE,COMMENT_PRODUTE FROM PRODUCT_COMMENT";
	
	String SQL_PRODUCT_COMMENT_SELECT_PAGE="SELECT ACCOUNT,DATE_FORMAT(COMMENT_DATE,'%Y-%m-%d %H:%I:%S') AS COMMENT_DATE,COMMENT_PRODUTE FROM PRODUCT_COMMENT_VIEW WHERE PRODUCT_ID=? LIMIT ?,?";
	String SQL_PRODUCT_COMMENT_DETAIL="SELECT * FROM PRODUCT_COMMENT_VIEW T WHERE PRODUCT_ID=?";
	void insert(int product_id,int customer_id,String comment_produte);
	
	void delete(int comment_id);
	void delete();
	
	void update(ProductComment entity);
	
	ProductComment selectOne(int comment_id);
	//List<ProductComment> selectList();
	//List<Product_Comment_View> selectList(int product_id);
	
	List<Product_Comment_View> selectPage(int current,int pageSize,int product_id);

	int getTotal(int product_id); 
	
}
