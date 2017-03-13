package edu.hgsf.nanyu.view;

import java.util.ArrayList;
import java.util.List;


public class ArticlePageVO {
	private int total;
	private int pageSize=5;
	private int current=1;
	private List<ArticleVO> data=new ArrayList<ArticleVO>();
	private int totalPage=1;
	public ArticlePageVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArticlePageVO(int total, int pageSize, int current,
			List<ArticleVO> data, int totalPage) {
		super();
		this.total = total;
		this.pageSize = pageSize;
		this.current = current;
		this.data = data;
		this.totalPage = totalPage;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public List<ArticleVO> getData() {
		return data;
	}
	public void setData(List<ArticleVO> data) {
		this.data = data;
	}
	public int getTotalPage() {
		return (this.total%this.pageSize==0)?(this.total/this.pageSize):(this.total/this.pageSize+1);
	}
	
}
