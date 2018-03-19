package com.ysl.dao;

import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.Buser;


@MyBatisDao
public interface BuserDao {

    Buser findByName(String busername);
    void add(Buser buser);
    List<Buser> findAll();
    void deletebuser(Integer buser_id);
    Buser findById(Integer buser_id);
}
