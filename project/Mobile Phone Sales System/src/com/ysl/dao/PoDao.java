package com.ysl.dao;

import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.Po;
import com.ysl.entity.page.PoPage;



@MyBatisDao
public interface PoDao {

	void add(Po po);
	List<Po> findByAll(Integer buser_id);
	void delete(Integer po_id);
	void updatefukuan(Po po);
	void updatefahuo(Po po);
	void updatetuihuo(Po po);
	Po findById(Integer po_id);
	void update(Po po);
	List<Po> findByPage(PoPage page);
	int findRows(Integer buser_id);
	
	List<Po> findByFrontPage(PoPage page);
	int findFrontRows(Integer user_id);
	
	List<Po> findByFrontPage1(PoPage page);
	int findFrontRows1(PoPage page);
	
	
	void usertuihuo(Po po);
	void userfukuan(Po po);
	
	
}
