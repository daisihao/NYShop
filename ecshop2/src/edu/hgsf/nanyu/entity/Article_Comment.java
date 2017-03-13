package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class Article_Comment implements Serializable{

	private static final long serialVersionUID = 1L;
	private String article_comment_id;
	private int customer_id;
	private int ID;
	private String article_comment_content;
	private String article_comment_time;
	
	public String getArticle_comment_id() {
		return article_comment_id;
	}
	public void setArticle_comment_id(String article_comment_id) {
		this.article_comment_id = article_comment_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getArticle_comment_content() {
		return article_comment_content;
	}
	public void setArticle_comment_content(String article_comment_content) {
		this.article_comment_content = article_comment_content;
	}
	public String getArticle_comment_time() {
		return article_comment_time;
	}
	public void setArticle_comment_time(String article_comment_time) {
		this.article_comment_time = article_comment_time;
	}
	public Article_Comment(String article_comment_id, int customer_id, int iD,
			String article_comment_content, String article_comment_time) {
		super();
		this.article_comment_id = article_comment_id;
		this.customer_id = customer_id;
		ID = iD;
		this.article_comment_content = article_comment_content;
		this.article_comment_time = article_comment_time;
	}
	public Article_Comment() {
		super();
	}
}
