package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class Product_Comment_View implements Serializable {
       /**
	 * 
	 */
	private static final long serialVersionUID = -3589366514370702281L;
	private String account;
       private String comment_date;
       private  String comment_produte;
     
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public String getComment_produte() {
		return comment_produte;
	}
	public void setComment_produte(String comment_produte) {
		this.comment_produte = comment_produte;
	}

	public Product_Comment_View(String account, String comment_date,
			String comment_produte) {
		super();
		this.account = account;
		this.comment_date = comment_date;
		this.comment_produte = comment_produte;
		
	}
	public Product_Comment_View() {
		super();
	}
       
	
}
