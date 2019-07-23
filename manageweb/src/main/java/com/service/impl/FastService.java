package com.service.impl;

import com.dao.FastDao;
import com.entity.Fast;
import com.service.IFastService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service("fastService")
@Transactional
@MapperScan("com.dao")
public class FastService implements IFastService {
    @Autowired
    private FastDao dao;

    @Override
    public List<Fast> selectAll() {
        return dao.selectAll();
    }

    @Override
    public int insert(Fast f) {
        return dao.insert(f);
    }

    @Override
    public int deleteByPrimaryKey(Integer fastId) {
        return dao.deleteByPrimaryKey(fastId);
    }


}
