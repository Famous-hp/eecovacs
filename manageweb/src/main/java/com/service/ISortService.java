package com.service;

import com.entity.Sort;

import java.util.List;

public interface ISortService {

    //查询所有
    List<Sort> selectAllSort();
    //新增
    int insert(Sort s);
    //删除
    int deleteByPrimaryKey(Integer sortId);
}
