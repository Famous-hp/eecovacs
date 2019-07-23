package com.service;

import com.entity.Fast;

import java.util.List;

public interface IFastService {

    //查询所有
    List<Fast> selectAll();
    //新增
    int insert(Fast f);
    //删除
    int deleteByPrimaryKey(Integer fastId);
}
