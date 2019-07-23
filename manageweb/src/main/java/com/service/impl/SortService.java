package com.service.impl;


import com.dao.ISortDao;
import com.entity.Sort;
import com.service.ISortService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("sortService")
@Transactional
@MapperScan("com.dao")
public class SortService implements ISortService{
    @Autowired
    private ISortDao dao;


    @Override
    public List<Sort> selectAllSort() {
        return dao.selectAllSort();
    }

    @Override
    public int insert(Sort s) {
        return dao.insert(s);
    }

    @Override
    public int deleteByPrimaryKey(Integer sortId) {
        return dao.deleteByPrimaryKey(sortId);
    }
}
