package com.dao;

import com.entity.*;

import java.util.List;

public interface ITypeDao {

    //查询所有
    List<Type> selectAllType();
    //新增
    int insert(Type t);
    //删除
    int deleteByPrimaryKey(Integer typeId);

    Type selectByPrimaryKey(Integer typeId);
}
