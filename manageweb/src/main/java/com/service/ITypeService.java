package com.service;

import com.entity.Type;

import java.util.List;

public interface ITypeService {
    //查询所有
    List<Type> selectAllType();
    //新增
    int insert(Type t);
    //删除
    int deleteByPrimaryKey(Integer typeId);

    Type selectByPrimaryKey(Integer typeId);
}
