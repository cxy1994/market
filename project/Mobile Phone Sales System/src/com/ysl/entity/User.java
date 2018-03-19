package com.ysl.entity;


public class User {
	private Integer user_id;
	private String username;
	private String userpassword;
	private String telephone;
	private String realname;
	private String sex;
	private String address;
	private String email;
	private String login;

	public User() {

	}


	public User(Integer userId, String username, String userpassword,
			String telephone, String realname, String sex, String address,
			String email) {
		super();
		user_id = userId;
		this.username = username;
		this.userpassword = userpassword;
		this.telephone = telephone;
		this.realname = realname;
		this.sex = sex;
		this.address = address;
		this.email = email;
	}


	public Integer getUser_id() {
		return user_id;
	}


	public String isLogin() {
		return login;
	}


	public void setLogin(String login) {
		this.login = login;
	}


	public void setUser_id(Integer userId) {
		user_id = userId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getUserpassword() {
		return userpassword;
	}


	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public String getRealname() {
		return realname;
	}


	public void setRealname(String realname) {
		this.realname = realname;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "User [address=" + address + ", email=" + email + ", realname="
				+ realname + ", sex=" + sex + ", telephone=" + telephone
				+ ", user_id=" + user_id + ", username=" + username
				+ ", userpassword=" + userpassword + "]";
	}


	


}
