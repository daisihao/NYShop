package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import edu.hgsf.nanyu.dao.ProductDAO;
import edu.hgsf.nanyu.entity.Product;
import edu.hgsf.nanyu.util.DBUtil;

public class ProductDAOImpl implements ProductDAO {

	@Override
	public int insert(Product entity) {
		// TODO 自动生成的方法存根
		int b=0;
		Connection conn=null;
		PreparedStatement pstat=null;
		//ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_INSERT);
			pstat.setInt(1, entity.getCatalogID());
			pstat.setString(2, entity.getCode());
			pstat.setString(3, entity.getName());
			pstat.setFloat(4, entity.getPrice());
			pstat.setString(5, entity.getImg());
			pstat.setInt(6, entity.getStore());
			pstat.setString(7, entity.getColor());
			pstat.setString(8, entity.getProductUp());
			pstat.setString(9, entity.getMade());
			pstat.setString(10, entity.getSupplier());
			pstat.setString(11, entity.getProfile());
			pstat.setString(12, entity.getTitle());
			b=pstat.executeUpdate();
			
			//rs=pstat.executeQuery();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(pstat, conn);
		}
		
		return b;
	}

	@Override
	public void delete(int product_id) {
		// TODO 自动生成的方法存根
		Connection conn=null;
		PreparedStatement pstat=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_DELETE_ID);
			pstat.setInt(1, product_id);
			pstat.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(pstat, conn);
		}

	}

	@Override
	public void deltte() {
		// TODO 自动生成的方法存根

	}

	@Override
	public void update(int product_id) {
		// TODO 自动生成的方法存根
		Connection conn=null;
		PreparedStatement pstat=null;
		//ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_UPDATE);
			pstat.setInt(1, product_id);
			pstat.executeUpdate();
			//rs=pstat.executeQuery();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(pstat, conn);
		}
		

	}

	@Override
	public Product selectOne(int product_id) {
		Product pro=null;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELETE_ONE);
			pstat.setInt(1, product_id);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product();
				pro.setProductID(rs.getInt("product_id"));
				pro.setCatalogID(rs.getInt("catalog_id"));
				pro.setCode(rs.getString("code"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getFloat("price"));
				pro.setImg(rs.getString("img"));
				pro.setStore(rs.getInt("store"));
				pro.setColor(rs.getString("color"));
				pro.setProductUp(rs.getString("product_up"));
				pro.setMade(rs.getString("made"));
				pro.setSupplier(rs.getString("supplier"));
				pro.setProfile(rs.getString("profile"));
				pro.setAdminID(rs.getInt("admin_id"));
				pro.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return pro;

	}

	@Override
	public List<Product> selectList() {
		List<Product> plist=new ArrayList<Product>();
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Product pro=null;
				
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELETE_LIST);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product();
				pro.setProductID(rs.getInt("product_id"));
				pro.setCatalogID(rs.getInt("catalog_id"));
				pro.setCode(rs.getString("code"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getFloat("price"));
				pro.setImg(rs.getString("img"));
				pro.setStore(rs.getInt("store"));
				pro.setColor(rs.getString("color"));
				pro.setProductUp(rs.getString("product_up"));
				pro.setMade(rs.getString("made"));
				pro.setSupplier(rs.getString("supplier"));
				pro.setProfile(rs.getString("profile"));
				pro.setTitle(rs.getString("title"));
				pro.setAdminID(rs.getInt("admin_id"));
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

	@Override
	public List<Product> slectcUpList(String product_up) {
		// TODO 自动生成的方法存根
		List<Product> plist=new ArrayList<Product>();
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Product pro=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELECT_UPLIST);
			pstat.setString(1,product_up);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product();
				pro.setProductID(rs.getInt("product_id"));
				pro.setCatalogID(rs.getInt("catalog_id"));
				pro.setCode(rs.getString("code"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getFloat("price"));
				pro.setImg(rs.getString("img"));
				pro.setStore(rs.getInt("store"));
				pro.setColor(rs.getString("color"));
				pro.setProductUp(rs.getString("product_up"));
				pro.setMade(rs.getString("made"));
				pro.setSupplier(rs.getString("supplier"));
				pro.setProfile(rs.getString("profile"));
				pro.setAdminID(rs.getInt("admin_id"));
				pro.setTitle(rs.getString("title"));
				plist.add(pro);	
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return plist;
	}
	
	@Override
	public List<Product> selectPage(int current, int pageSize) {
		// TODO 自动生成的方法存根
		List<Product> plist=new ArrayList<Product>();
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		Product pro=null;
		int cu1=(current-1)*pageSize;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELECT_PAGE);
			pstat.setInt(1, cu1);
			pstat.setInt(2, pageSize);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product();
				pro.setProductID(rs.getInt("product_id"));
				pro.setCatalogID(rs.getInt("catalog_id"));
				pro.setCode(rs.getString("code"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getFloat("price"));
				pro.setImg(rs.getString("img"));
				pro.setStore(rs.getInt("store"));
				pro.setColor(rs.getString("color"));
				pro.setProductUp(rs.getString("product_up"));
				pro.setMade(rs.getString("made"));
				pro.setSupplier(rs.getString("supplier"));
				pro.setProfile(rs.getString("profile"));
				pro.setAdminID(rs.getInt("admin_id"));
				pro.setTitle(rs.getString("title"));
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

	@Override
	public int total() {
		// TODO 自动生成的方法存根
		int count=0;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELECT_COUNT);
			rs=pstat.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		
		return count;
	}
	@Override
	public Product selectOne(String name) {
		Product pro=null;
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELECT_ONE_NAME);
			pstat.setString(1, name);
			rs=pstat.executeQuery();
			while(rs.next()){
				pro=new Product();
				pro.setProductID(rs.getInt("product_id"));
				pro.setCatalogID(rs.getInt("catalog_id"));
				pro.setCode(rs.getString("code"));
				pro.setName(rs.getString("name"));
				pro.setPrice(rs.getFloat("price"));
				pro.setImg(rs.getString("img"));
				pro.setStore(rs.getInt("store"));
				pro.setColor(rs.getString("color"));
				pro.setProductUp(rs.getString("product_up"));
				pro.setMade(rs.getString("made"));
				pro.setSupplier(rs.getString("supplier"));
				pro.setProfile(rs.getString("profile"));
				pro.setAdminID(rs.getInt("admin_id"));
				pro.setTitle(rs.getString("title"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return pro;
	}

	/*@Override
	public ResultSet selectOne(int product_up, String name) {
		Connection conn=null;
		PreparedStatement pstat=null;
		ResultSet rs=null;
		try {
			conn=DBUtil.getConnection();
			pstat=conn.prepareStatement(SQL_PRODUCT_SELECT_ONE_UP);
			pstat.setInt(1, product_up);
			pstat.setString(2, name);
			rs=pstat.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
		return rs;
	}*/
}
