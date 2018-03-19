package com.ysl.dao;

import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.ShouCang;
import com.ysl.entity.page.ShouCangPage;

@MyBatisDao
public interface ShouCangDao {

	  List<ShouCang> findAll();
	  
	  List<ShouCang> findByPage(ShouCangPage page);
	  
	  int findRows(int user_id);
	  
	  void add(ShouCang shoucang);
	  
	  ShouCang findByPhoneId(int phone_id);
	  
	  void delete(int shoucang_id);
	
}
