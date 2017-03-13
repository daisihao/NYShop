package edu.hgsf.nanyu.view;

public class ProductVO {
	private String productID;			//产品ID
	private String catalogID; 			//产品目录ID
	private String adminID;			//产品添加者管理员ID
	private String code;   			//产品条码
	private String name;			//产品名
	private String price;			//产品价格
	private String img;				//产品图片
	private String store;				//产品库存量
	private String color;			//产品颜色
	private String productUp;		//产品是否上架
	private String made;			//产品产地
	private String supplier;		//产品供应商
	private String profile;			//产品简介
	private String title;			//产品标题
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getCatalogID() {
		return catalogID;
	}
	public void setCatalogID(String catalogID) {
		this.catalogID = catalogID;
	}
	public String getAdminID() {
		return adminID;
	}
	public void setAdminID(String adminID) {
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getStore() {
		return store;
	}
	public void setStore(String store) {
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
	
	public ProductVO(String productID, String catalogID, String adminID,
			String code, String name, String price, String img, String store,
			String color, String productUp, String made, String supplier,
			String profile, String title) {
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
	public ProductVO() {
		super();
		// TODO 自动生成的构造函数存根
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
