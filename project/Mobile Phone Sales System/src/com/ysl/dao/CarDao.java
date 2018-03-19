package com.ysl.dao;


import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.Car;
import com.ysl.entity.page.CarPage;


@MyBatisDao
public interface CarDao {
    void add(Car car);
    List<Car> findAll();
    void delete(Integer Car_id);
    List<Car> findByPage(CarPage page);
	int findRows(Integer user_id);
	  List<Car> findByPageForNiMing(CarPage page);
	  int findRowsForNiMing(CarPage page);
}
