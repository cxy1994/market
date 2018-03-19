package com.ysl.dao;

import java.util.List;

import com.ysl.annotation.MyBatisDao;
import com.ysl.entity.User;


@MyBatisDao
public interface UserDao {

	void add(User user);
    User findByName(String username);
    List<User> findAll();
    void deleteuser(Integer user_id);
    void update(User user);
    void updateByAddress(User user);
    void updateBySafe(User user);
    void updateByPassword(User user);
    void updateByLogin(User user);
    User findById(Integer user_id);
}
