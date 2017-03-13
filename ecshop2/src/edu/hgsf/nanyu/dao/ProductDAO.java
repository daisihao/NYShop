package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Product;

public interface ProductDAO {
	String SQL_PRODUCT_INSERT="INSERT INTO PRODUCT (CATALOG_ID, CODE, NAME, PRICE, IMG, STORE, COLOR, PRODUCT_UP, MADE, SUPPLIER, PROFILE, TITLE) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
	String SQL_PRODUCT_DELETE_ID="DELETE FROM PRODUCT WHERE PRODUCT_ID=?";
	String SQL_PRODUCT_DELETE="DELETE FROM PRODUCT";
	String SQL_PRODUCT_UPDATE="UPDATE PRODUCT SET PRODUCT_UP=-PRODUCT_UP WHERE PRODUCT_ID=?";
	String SQL_PRODUCT_SELETE_ONE="SELECT * FROM PRODUCT WHERE PRODUCT_ID=?";
	String SQL_PRODUCT_SELETE_LIST="SELECT * FROM PRODUCT";
	String SQL_PRODUCT_SELECT_UPLIST="SELECT * FROM PRODUCT WHERE PRODUCT_UP=?";

	String SQL_PRODUCT_SELECT_PAGE="SELECT * FROM PRODUCT LIMIT ?,?";
	String SQL_PRODUCT_SELECT_COUNT="SELECT COUNT(*) total FROM PRODUCT";
	
	String SQL_PRODUCT_SELECT_ONE_NAME="select * from PRODUCT where name=?";
	
	String SQL_PRODUCT_SELECT_ONE_UP="select * from PRODUCT where product_up=? and name=?";
	
	//增
	int insert(Product entity);
    //删
	void delete(int product_id);
	void deltte();
	
	//改
	void update(int product_id);
	
	//查
	Product selectOne(int product_id);//查询的返回值是一个Product实体
	Product selectOne(String name); //通过产品名查询相应产品
	
	List<Product> selectList();  //查询所有产品
	List<Product> slectcUpList(String product_up);  //查询所有已上架的产品
	
	//分页查询所有已经上架的产品
	List<Product> selectPage(int current,int pageSize);   //分页查询
	public int total();
}
