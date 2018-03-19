package com.ysl.entity.page;

import java.util.List;

public class PhonePage extends Page {
  private Integer buser_id;
  private List<Integer> fenleilist;
  private List<String> cpulist;
  private List<Integer> pricelist;
  private List<String> chicunlist;
  private String sousuo;
  
public List<Integer> getFenleilist() {
	return fenleilist;
}

public void setFenleilist(List<Integer> fenleilist) {
	this.fenleilist = fenleilist;
}

public List<String> getCpulist() {
	return cpulist;
}

public void setCpulist(List<String> cpulist) {
	this.cpulist = cpulist;
}

public List<Integer> getPricelist() {
	return pricelist;
}

public void setPricelist(List<Integer> pricelist) {
	this.pricelist = pricelist;
}

public List<String> getChicunlist() {
	return chicunlist;
}

public void setChicunlist(List<String> chicunlist) {
	this.chicunlist = chicunlist;
}

public Integer getBuser_id() {
	return buser_id;
}

public void setBuser_id(Integer buserId) {
	buser_id = buserId;
}

public String getSousuo() {
	return sousuo;
}

public void setSousuo(String sousuo) {
	this.sousuo = sousuo;
}
  
}
