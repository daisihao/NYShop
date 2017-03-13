package edu.hgsf.nanyu.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import edu.hgsf.nanyu.dao.MessageDAO;
import edu.hgsf.nanyu.entity.Message;

import edu.hgsf.nanyu.util.DBUtil;
import edu.hgsf.nanyu.view.MessageVO;

public class MessageDAOImpl implements MessageDAO {

	@Override
	public void insert(Message messageID) {
		// TODO 自动生成的方法存根

	}

	@Override
	public void delete(int messageID) {
		// TODO 自动生成的方法存根

	}

	@Override
	public void delete() {
		// TODO 自动生成的方法存根

	}

	@Override
	public void update(Message entity) {
		// TODO 自动生成的方法存根

	}

	@Override
	public Message selectOne(int messageID) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public List<Message> selectList() {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public void insert(int message_id,int customer_id,String type,String content,String filepath) {
		/*
		 * 向数据库中插入留言信息
		 * 作者==代思豪 ，如有需要，请联系
		 * */
		
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		
		Message msg=new Message();
		
		
		try {
			conn = DBUtil.getConnection();
			pstat = conn.prepareStatement(SQL_MESSAGE_INSERT);
			pstat.setInt(1, message_id);
			pstat.setInt(2, customer_id);
			pstat.setString(3, type);
			pstat.setString(4, content);
			pstat.setString(5, filepath);
			rs=pstat.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtil.closeConnection(rs, pstat, conn);
		}
	}

}
