package com.dao;

import com.entity.Type;

public interface ITypeDao {
    Type selectByPrimaryKey(Integer typeId);
}
