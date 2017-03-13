package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class Catalog implements Serializable {
	private static final long serialVersionUID = -5913784554601007286L;
	private int catalogID;			//目录ID
	private int catalogPID;         //父目录ID
	private String catalogName;		//目录名
	public int getCatalogID() {
		return catalogID;
	}
	public void setCatalogID(int catalogID) {
		this.catalogID = catalogID;
	}
	public int getCatalogPID() {
		return catalogPID;
	}
	public void setCatalogPID(int catalogPID) {
		this.catalogPID = catalogPID;
	}
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	public Catalog(int catalogID, int catalogPID, String catalogName) {
		super();
		this.catalogID = catalogID;
		this.catalogPID = catalogPID;
		this.catalogName = catalogName;
	}
	public Catalog() {
		super();
	}
}
