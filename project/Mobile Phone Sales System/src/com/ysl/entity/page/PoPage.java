package com.ysl.entity.page;

public class PoPage extends Page{
	private String fahuo;
	private String fukuan;
	private Integer buser_id ;
	private Integer user_id;

	  public String getFahuo() {
		return fahuo;
	}

	public void setFahuo(String fahuo) {
		this.fahuo = fahuo;
	}

	public String getFukuan() {
		return fukuan;
	}

	public void setFukuan(String fukuan) {
		this.fukuan = fukuan;
	}

	public Integer getUser_id() {
	  	return user_id;
	  }

	  public void setUser_id(Integer userId) {
	  	user_id = userId;
	  }

	public Integer getBuser_id() {
		return buser_id;
	}

	public void setBuser_id(Integer buserId) {
		buser_id = buserId;
	}
	

}
