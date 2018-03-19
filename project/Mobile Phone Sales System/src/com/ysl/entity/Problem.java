package com.ysl.entity;


public class Problem {
	private Integer fankui_id;
	private Integer user_id;
	private String zhuti;
	private String neirong;
	

	public Problem() {

	}


	public Problem(Integer userId, String zhuti,
			String neirong) {
		super();
		this.user_id = userId;
		this.zhuti = zhuti;
		this.neirong = neirong;
	}


	public Integer getFankui_id() {
		return fankui_id;
	}


	public void setFankui_id(Integer fankuiId) {
		fankui_id = fankuiId;
	}


	public Integer getUser_id() {
		return user_id;
	}


	public void setUser_id(Integer userId) {
		user_id = userId;
	}


	public String getZhuti() {
		return zhuti;
	}


	public void setZhuti(String zhuti) {
		this.zhuti = zhuti;
	}


	public String getNeirong() {
		return neirong;
	}


	public void setNeirong(String neirong) {
		this.neirong = neirong;
	}


	@Override
	public String toString() {
		return "Problem [fankui_id=" + fankui_id + ", neirong=" + neirong
				+ ", user_id=" + user_id + ", zhuti=" + zhuti + "]";
	}

}
