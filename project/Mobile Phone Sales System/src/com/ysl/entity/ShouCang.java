package com.ysl.entity;

public class ShouCang {

	private int shoucang_id;
	private int user_id;
	private String buserName;
	private int phone_id;
	private String phoneName;
	private int phone_price;
	private String phone_picture;
	private String chicun;
	private String memery;
	private String cpu;
	private String fenbianlv;
	private String front;
	private String behind;

	public static ShouCang getInstance() {
		return new ShouCang();
	}

	private ShouCang() {

	}

	public ShouCang(int shoucangId, int userId, String buserName, int phoneId,
			String phoneName, int phonePrice, String phonePicture,
			String chicun, String memery, String cpu, String fenbianlv,
			String front, String behind) {
		super();
		shoucang_id = shoucangId;
		user_id = userId;
		this.buserName = buserName;
		phone_id = phoneId;
		this.phoneName = phoneName;
		phone_price = phonePrice;
		phone_picture = phonePicture;
		this.chicun = chicun;
		this.memery = memery;
		this.cpu = cpu;
		this.fenbianlv = fenbianlv;
		this.front = front;
		this.behind = behind;
	}

	public int getShoucang_id() {
		return shoucang_id;
	}

	public void setShoucang_id(int shoucangId) {
		shoucang_id = shoucangId;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int userId) {
		user_id = userId;
	}

	public int getPhone_id() {
		return phone_id;
	}

	public void setPhone_id(int phoneId) {
		phone_id = phoneId;
	}

	public String getPhoneName() {
		return phoneName;
	}

	public void setPhoneName(String phoneName) {
		this.phoneName = phoneName;
	}

	public int getPhone_price() {
		return phone_price;
	}

	public void setPhone_price(int phonePrice) {
		phone_price = phonePrice;
	}

	public String getPhone_picture() {
		return phone_picture;
	}

	public void setPhone_picture(String phonePicture) {
		phone_picture = phonePicture;
	}

	public String getBuserName() {
		return buserName;
	}

	public void setBuserName(String buserName) {
		this.buserName = buserName;
	}

	
	public String getChicun() {
		return chicun;
	}

	public void setChicun(String chicun) {
		this.chicun = chicun;
	}

	public String getMemery() {
		return memery;
	}

	public void setMemery(String memery) {
		this.memery = memery;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
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

	@Override
	public String toString() {
		return "ShouCang [behind=" + behind + ", buserName=" + buserName
				+ ", chicun=" + chicun + ", cpu=" + cpu + ", fenbianlv="
				+ fenbianlv + ", front=" + front + ", memery=" + memery
				+ ", phoneName=" + phoneName + ", phone_id=" + phone_id
				+ ", phone_picture=" + phone_picture + ", phone_price="
				+ phone_price + ", shoucang_id=" + shoucang_id + ", user_id="
				+ user_id + "]";
	}

}
