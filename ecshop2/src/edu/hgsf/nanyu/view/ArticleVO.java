package edu.hgsf.nanyu.view;

public class ArticleVO {
  private String ID;
  private String adminID;
  private String title;
  private String author;
  private String content;
  private String comment;
  private String date;
  

public String getID() {
	return ID;
}
public void setID(String iD) {
	ID = iD;
}
public String getAdminID() {
	return adminID;
}
public void setAdminID(String adminID) {
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
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public ArticleVO(String iD, String adminID, String title, String author,
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
public ArticleVO() {
	super();
	// TODO Auto-generated constructor stub
}

}
