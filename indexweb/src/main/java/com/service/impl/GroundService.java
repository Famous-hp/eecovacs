package com.service.impl;

import com.dao.IGroundDao;
import com.entity.Ground;
import com.service.IGroundService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("groundsService")
@Transactional
@MapperScan("com.dao")
public class GroundService implements IGroundService {
    @Autowired
    private IGroundDao dao;

    @Override
    public List<Ground> selectAllGround() {
        return dao.selectAllGround();
    }
}
