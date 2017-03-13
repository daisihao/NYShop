package edu.hgsf.nanyu.dao;

import java.util.List;

import edu.hgsf.nanyu.entity.Message;
import edu.hgsf.nanyu.view.MessageVO;

public interface MessageDAO {
	public static final String SQL_MESSAGE_INSERT="insert into message values(?,?,?,?,?)";
	
	public static final String SQL_MESSAGE_DELETE_ONE="";
	public static final String SQL_MESSAGE_DELETE_ALL="";
	
	public static final String SQL_MESSAGE_UPDATE="";
	
	public static final String SQL_MESSAGE_SELECT_ONE="";
	public static final String SQL_MESSAGE_SELECT_LISt="";
	
	void insert(Message messageID);
	
	void insert(int message_id,int customer_id,String type,String content,String filepath);
	
	void delete(int messageID);
	void delete();
	
	void update(Message entity);
	
	Message selectOne(int messageID);
	List<Message> selectList();
}
