package com.ysl.entity;


public class Po {
	private Integer po_id;
	private String po_bianhao;
	private Integer phone_id;
	private Integer buser_id;
	private Integer user_id;
	private Integer po_number;
	private Integer po_price;
	private String fukuan;
	private String fahuo;
	private String tuihuo;
    
	private String phonename;
	private String cpu;
	private String memery;
	private String address;
	private String username;
	private String telephone;
	
	
	public Po() {

	}

	public Po(String poBianhao, Integer phoneId, Integer buserId,
			Integer userId, Integer poNumber, Integer poPrice, String fukuan,
			String fahuo, String tuihuo) {
		super();
		po_bianhao = poBianhao;
		phone_id = phoneId;
		buser_id = buserId;
		user_id = userId;
		po_number = poNumber;
		po_price = poPrice;
		this.fukuan = fukuan;
		this.fahuo = fahuo;
		this.tuihuo = tuihuo;
	}


	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getPhonename() {
		return phonename;
	}

	public void setPhonename(String phonename) {
		this.phonename = phonename;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getPo_id() {
		return po_id;
	}

	public void setPo_id(Integer poId) {
		po_id = poId;
	}

	public String getPo_bianhao() {
		return po_bianhao;
	}

	public void setPo_bianhao(String poBianhao) {
		po_bianhao = poBianhao;
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

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer userId) {
		user_id = userId;
	}

	public Integer getPo_number() {
		return po_number;
	}

	public void setPo_number(Integer poNumber) {
		po_number = poNumber;
	}

	public Integer getPo_price() {
		return po_price;
	}

	public void setPo_price(Integer poPrice) {
		po_price = poPrice;
	}

	public String getFukuan() {
		return fukuan;
	}

	public void setFukuan(String fukuan) {
		this.fukuan = fukuan;
	}

	public String getFahuo() {
		return fahuo;
	}

	public void setFahuo(String fahuo) {
		this.fahuo = fahuo;
	}

	public String getTuihuo() {
		return tuihuo;
	}

	public void setTuihuo(String tuihuo) {
		this.tuihuo = tuihuo;
	}

	@Override
	public String toString() {
		return "Po [address=" + address + ", buser_id=" + buser_id + ", fahuo="
				+ fahuo + ", fukuan=" + fukuan + ", phone_id=" + phone_id
				+ ", phonename=" + phonename + ", po_bianhao=" + po_bianhao
				+ ", po_id=" + po_id + ", po_number=" + po_number
				+ ", po_price=" + po_price + ", tuihuo=" + tuihuo
				+ ", user_id=" + user_id + "]";
	}


	


}
