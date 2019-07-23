package com.service;

import com.entity.Type;

public interface ITypeService {
    Type selectByPrimaryKey(Integer typeId);
}
