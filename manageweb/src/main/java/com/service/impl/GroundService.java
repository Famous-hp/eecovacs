package com.service.impl;

import com.dao.IGoundDao;
import com.service.IGroundService;
import com.entity.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("groundService")
@Transactional
@MapperScan("com.dao")
public class GroundService implements IGroundService{

    @Autowired
    private IGoundDao dao;
    @Override
    public Ground selectByPrimaryKey(Integer gid) {
        return dao.selectByPrimaryKey(gid);
    }

    @Override
    public int insert(Ground g) {
        return dao.insert(g);
    }
}
