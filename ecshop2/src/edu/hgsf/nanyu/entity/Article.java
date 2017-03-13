package edu.hgsf.nanyu.entity;

import java.io.Serializable;


public class Article implements Serializable {

	private static final long serialVersionUID = -3830237587298464879L;
	private int ID;
	private int adminID;
	private String title;
	private String author;
	private String content;
	private String comment;
	private String  date;

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getAdminID() {
		return adminID;
	}

	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
    
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public Article(int iD, int adminID, String title, String author,
			String content, String comment, String date) {
		super();
		ID = iD;
		this.adminID = adminID;
		this.title = title;
		this.author = author;
		this.content = content;
		this.comment = comment;
		this.date = date;
	}
	
	public Article() {
		super();
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
