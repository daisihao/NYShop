package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class Message implements Serializable {
	private static final long serialVersionUID = -729398736908548000L;
	private int messageID;
	private int customerID;
	private String type;
	private String title;
	private String content;
	private String filepath;
	public int getMessageID() {
		return messageID;
	}
	public void setMessagerID(int messageID) {
		this.messageID = messageID;
	}
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public Message(int messageID, int customerID, String type, String title,
			String content, String filepath) {
		super();
		this.messageID = messageID;
		this.customerID = customerID;
		this.type = type;
		this.title = title;
		this.content = content;
		this.filepath = filepath;
	}
	public Message() {
		super();
	}
}
