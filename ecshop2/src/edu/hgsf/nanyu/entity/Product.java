package edu.hgsf.nanyu.entity;

import java.io.Serializable;

public class Product implements Serializable {
	private static final long serialVersionUID = -5953586398700877672L;
	private int productID;			//产品ID
	private int catalogID; 			//产品目录ID
	private int adminID;			//产品添加者管理员ID
	private String code;   			//产品条码
	private String name;			//产品名
	private float price;			//产品价格
	private String img;				//产品图片
	private int store;				//产品库存量
	private String color;			//产品颜色
	private String productUp;		//产品是否上架
	private String made;			//产品产地
	private String supplier;		//产品供应商
	private String profile;		//产品描述
	private String title;		//产品标题
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getCatalogID() {
		return catalogID;
	}
	public void setCatalogID(int catalogID) {
		this.catalogID = catalogID;
	}
	public int getAdminID() {
		return adminID;
	}
	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getStore() {
		return store;
	}
	public void setStore(int store) {
		this.store = store;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getProductUp() {
		return productUp;
	}
	public void setProductUp(String productUp) {
		this.productUp = productUp;
	}
	public String getMade() {
		return made;
	}
	public void setMade(String made) {
		this.made = made;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	
	public Product(int productID, int catalogID, int adminID, String code,
			String name, float price, String img, int store, String color,
			String productUp, String made, String supplier, String profile,
			String title) {
		super();
		this.productID = productID;
		this.catalogID = catalogID;
		this.adminID = adminID;
		this.code = code;
		this.name = name;
		this.price = price;
		this.img = img;
		this.store = store;
		this.color = color;
		this.productUp = productUp;
		this.made = made;
		this.supplier = supplier;
		this.profile = profile;
		this.title = title;
	}
	public Product() {
		super();
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
