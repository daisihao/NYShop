package edu.hgsf.nanyu.view;

public class UserWelVO {
	
	/*
	 * 首页显示积分和订单总数
	 * 作者=代思豪，如有需要请联系
	 * */
	
	String score;
	String totalOrder;
	
	
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getTotalOrder() {
		return totalOrder;
	}
	public void setTotalOrder(String totalOrder) {
		this.totalOrder = totalOrder;
	}
	public UserWelVO(String score, String totalOrder) {
		super();
		this.score = score;
		this.totalOrder = totalOrder;
	}
	public UserWelVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
