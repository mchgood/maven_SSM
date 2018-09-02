package com.zhidisoft.dao;

import com.zhidisoft.entity.Role;
import java.util.List;

public interface RoleDao {
    int deleteByPrimaryKey(Integer roleId);

    int insert(Role record);

    Role selectByPrimaryKey(Integer roleId);

    List<Role> selectAll();

    int updateByPrimaryKey(Role record);
}