package com.ysl.dao;


import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.Phone;
import com.ysl.entity.page.PhonePage;



@MyBatisDao
public interface PhoneDao {

	void add(Phone phone);
	List<Phone> findByAll();
	List<Phone> findByAllSortPrice();
	Phone findById(Integer phone_id);
	void delete(Integer phone_id);
	List<Phone> findByBuser_id(Integer buser_id);
	void update(Phone phone);
	Phone findByName(String phonename);
	List<Phone> findByPage(PhonePage page);
	int findRows(Integer buser_id);
	
	
	List<Phone> findByFrontPage(PhonePage page);
	int findFrontRows(PhonePage page);
	
	List<String> findByPinpai();
	List<String> findByCpu();
	List<String> findByChicun();
   
	void updateNumber(Phone phone);
	
	
}
