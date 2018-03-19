package com.ysl.entity;


public class Buser {
	private Integer buser_id;
	private String busername;
	private String buserpassword;
	private String busershenfenzheng;
	private String busertelephone;

	public Buser() {

	}

	public Buser(Integer buserId, String busername, String buserpassword,
			String busershenfenzheng, String busertelephone) {
		super();
		buser_id = buserId;
		this.busername = busername;
		this.buserpassword = buserpassword;
		this.busershenfenzheng = busershenfenzheng;
		this.busertelephone = busertelephone;
	}

	public Integer getBuser_id() {
		return buser_id;
	}

	public void setBuser_id(Integer buserId) {
		buser_id = buserId;
	}

	public String getBusername() {
		return busername;
	}

	public void setBusername(String busername) {
		this.busername = busername;
	}

	public String getBuserpassword() {
		return buserpassword;
	}

	public void setBuserpassword(String buserpassword) {
		this.buserpassword = buserpassword;
	}

	public String getBusershenfenzheng() {
		return busershenfenzheng;
	}

	public void setBusershenfenzheng(String busershenfenzheng) {
		this.busershenfenzheng = busershenfenzheng;
	}

	public String getBusertelephone() {
		return busertelephone;
	}

	public void setBusertelephone(String busertelephone) {
		this.busertelephone = busertelephone;
	}

	@Override
	public String toString() {
		return "Buser [buser_id=" + buser_id + ", busername=" + busername
				+ ", buserpassword=" + buserpassword + ", busershenfenzheng="
				+ busershenfenzheng + ", busertelephone=" + busertelephone
				+ "]";
	}
}
