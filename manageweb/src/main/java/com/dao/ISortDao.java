package com.dao;

import com.entity.*;

import java.util.*;

public interface ISortDao {

    //查询所有
    List<Sort> selectAllSort();
    //新增
    int insert(Sort s);
    //删除
    int deleteByPrimaryKey(Integer sortId);
}
