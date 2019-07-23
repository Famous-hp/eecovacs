package com.service.impl;

import com.dao.ITypeDao;
import com.entity.Type;
import com.service.ITypeService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("typesService")
@Transactional
@MapperScan("com.dao")
public class TypeService implements ITypeService{
    @Autowired
    private ITypeDao dao;
    @Override
    public Type selectByPrimaryKey(Integer typeId) {
        return dao.selectByPrimaryKey(typeId);
    }
}
