package com.ysl.dao;

import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.Problem;
import com.ysl.entity.page.ProblemPage;



@MyBatisDao
public interface ProblemDao {

	void add(Problem problem);
    List<Problem> findAll();
    void delete(Integer fankui_id);
	List<Problem> findByPage(ProblemPage page);
	int findRows();
    
}
