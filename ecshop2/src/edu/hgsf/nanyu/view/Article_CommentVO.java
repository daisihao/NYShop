package edu.hgsf.nanyu.view;

public class Article_CommentVO {
	
	private String article_comment_id;
	private String customer_id;
	private String ID;//文章ID
	private String article_comment_content;
	private String article_comment_time;
	public String getArticle_comment_time() {
		return article_comment_time;
	}
	public void setArticle_comment_time(String article_comment_time) {
		this.article_comment_time = article_comment_time;
	}
	public String getArticle_comment_id() {
		return article_comment_id;
	}
	public void setArticle_comment_id(String article_comment_id) {
		this.article_comment_id = article_comment_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getArticle_comment_content() {
		return article_comment_content;
	}
	public void setArticle_comment_content(String article_comment_content) {
		this.article_comment_content = article_comment_content;
	}
	public Article_CommentVO(String article_comment_id, String customer_id,
			String iD, String article_comment_content,
			String article_comment_time) {
		super();
		this.article_comment_id = article_comment_id;
		this.customer_id = customer_id;
		ID = iD;
		this.article_comment_content = article_comment_content;
		this.article_comment_time = article_comment_time;
	}
	public Article_CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
