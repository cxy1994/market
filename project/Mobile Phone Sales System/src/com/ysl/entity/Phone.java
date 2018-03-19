package com.ysl.entity;


public class Phone {
	private Integer phone_id;
	private Integer buser_id;
	private String phonename;
	private Integer phone_number;
	private Integer phone_price;
	private String chicun;
	private String fenbianlv;
	private String front;
	private String behind;
	private String cpu;
	private String memery;
	private String picture;
	private String fenlei;

	public Phone() {

	}

	public Phone(String fenlei,Integer buserId, String phonename, Integer phoneNumber,
			Integer phonePrice, String chicun, String fenbianlv, String front,
			String behind, String cpu, String memery, String picture) {
		super();
		this.fenlei=fenlei;
		buser_id = buserId;
		this.phonename = phonename;
		phone_number = phoneNumber;
		phone_price = phonePrice;
		this.chicun = chicun;
		this.fenbianlv = fenbianlv;
		this.front = front;
		this.behind = behind;
		this.cpu = cpu;
		this.memery = memery;
		this.picture = picture;
	}

	public Integer getPhone_id() {
		return phone_id;
	}

	public void setPhone_id(Integer phoneId) {
		phone_id = phoneId;
	}

	public Integer getBuser_id() {
		return buser_id;
	}

	public void setBuser_id(Integer buserId) {
		buser_id = buserId;
	}

	public String getPhonename() {
		return phonename;
	}

	public void setPhonename(String phonename) {
		this.phonename = phonename;
	}

	public Integer getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(Integer phoneNumber) {
		phone_number = phoneNumber;
	}

	public Integer getPhone_price() {
		return phone_price;
	}

	public void setPhone_price(Integer phonePrice) {
		phone_price = phonePrice;
	}

	public String getChicun() {
		return chicun;
	}

	public void setChicun(String chicun) {
		this.chicun = chicun;
	}

	public String getFenbianlv() {
		return fenbianlv;
	}

	public void setFenbianlv(String fenbianlv) {
		this.fenbianlv = fenbianlv;
	}

	public String getFront() {
		return front;
	}

	public void setFront(String front) {
		this.front = front;
	}

	public String getBehind() {
		return behind;
	}

	public void setBehind(String behind) {
		this.behind = behind;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getMemery() {
		return memery;
	}

	public void setMemery(String memery) {
		this.memery = memery;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
	

	public String getFenlei() {
		return fenlei;
	}

	public void setFenlei(String fenlei) {
		this.fenlei = fenlei;
	}

	@Override
	public String toString() {
		return "Phone [behind=" + behind + ", buser_id=" + buser_id
				+ ", chicun=" + chicun + ", cpu=" + cpu + ", fenbianlv="
				+ fenbianlv + ", front=" + front + ", memery=" + memery
				+ ", phone_id=" + phone_id + ", phone_number=" + phone_number
				+ ", phone_price=" + phone_price + ", phonename=" + phonename
				+ ", picture=" + picture + "]";
	}

	


}
