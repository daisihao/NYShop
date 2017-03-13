package edu.hgsf.nanyu.view;

import java.util.ArrayList;
import java.util.List;

public class PageVO<T> {
	private int currentPages=1;//当前页
	private int total;//总记录数
	private int pageSize=5;//每页的容量
	private int totalPages;//总页数
	
	private List<T> rows=new ArrayList<T>();//保存当前页的记录集合

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
		this.totalPages=(total%pageSize==0)?(total/pageSize):(total/pageSize+1);
	}

	public int getCurrentPages() {
		return currentPages;
	}

	public void setCurrentPages(int currentPages) {
		this.currentPages = currentPages;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	


}