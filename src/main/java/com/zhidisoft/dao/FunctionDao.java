package com.zhidisoft.dao;

import com.zhidisoft.entity.Function;
import java.util.List;

public interface FunctionDao {
    int deleteByPrimaryKey(Integer funcId);

    int insert(Function record);

    Function selectByPrimaryKey(Integer funcId);

    List<Function> selectAll();

    int updateByPrimaryKey(Function record);
}