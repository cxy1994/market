package com.ysl.entity;



public class Car {	

	private Integer car_id;
	private Integer user_id;
	private Integer phone_id;
	private Integer car_number;
	private Integer car_price;
	private String phonename;
	private Integer phone_price;
	private String chicun;
	private String behind;
	private String cpu;
	private String memery;
	private String username;
	private Integer buser_id;
	private String buername;
	public Car() {

	}

	

	public String getBuername() {
		return buername;
	}



	public void setBuername(String buername) {
		this.buername = buername;
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



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public Car(Integer userId, Integer phoneId, Integer carNumber,
			Integer carPrice, String phonename, Integer phonePrice,
			String chicun, String behind, String cpu, String memery,
			String username) {
		super();
		user_id = userId;
		phone_id = phoneId;
		car_number = carNumber;
		car_price = carPrice;
		this.phonename = phonename;
		phone_price = phonePrice;
		this.chicun = chicun;
		this.behind = behind;
		this.cpu = cpu;
		this.memery = memery;
		this.username = username;
	}



	public Integer getCar_id() {
		return car_id;
	}

	public void setCar_id(Integer carId) {
		car_id = carId;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer userId) {
		user_id = userId;
	}

	public Integer getPhone_id() {
		return phone_id;
	}

	public void setPhone_id(Integer phoneId) {
		phone_id = phoneId;
	}

	public Integer getCar_number() {
		return car_number;
	}

	public void setCar_number(Integer carNumber) {
		car_number = carNumber;
	}

	public Integer getCar_price() {
		return car_price;
	}

	public void setCar_price(Integer carPrice) {
		car_price = carPrice;
	}



	@Override
	public String toString() {
		return "Car [behind=" + behind + ", car_id=" + car_id + ", car_number="
				+ car_number + ", car_price=" + car_price + ", chicun="
				+ chicun + ", cpu=" + cpu + ", memery=" + memery
				+ ", phone_id=" + phone_id + ", phone_price=" + phone_price
				+ ", phonename=" + phonename + ", user_id=" + user_id
				+ ", username=" + username + "]";
	}


	
}
