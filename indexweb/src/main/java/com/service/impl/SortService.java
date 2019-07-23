package com.service.impl;

import com.dao.ISortDao;
import com.entity.Sort;
import com.service.ISortService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("sortsService")
@Transactional
@MapperScan("com.dao")
public class SortService implements ISortService{
    @Autowired
    private ISortDao dao;
    @Override
    public Sort selectByPrimaryKey(Integer sortId) {
        return dao.selectByPrimaryKey(sortId);
    }
}
