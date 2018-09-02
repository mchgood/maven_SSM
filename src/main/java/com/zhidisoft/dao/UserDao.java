package com.zhidisoft.dao;

import com.zhidisoft.entity.User;
import java.util.List;

public interface UserDao {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    User selectByPrimaryKey(Integer userId);

    List<User> selectAll();

    int updateByPrimaryKey(User record);
    
    User findByName(User user);
}