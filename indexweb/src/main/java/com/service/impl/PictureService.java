package com.service.impl;


import com.dao.IPictureDao;
import com.entity.Picture;
import com.service.IPictrueService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("picService")
@Transactional
@MapperScan("com.dao")
public class PictureService implements IPictrueService{
    @Autowired
    private IPictureDao dao;
    @Override
    public List<Picture> selectByGroundid(Integer ground_id) {
        return dao.selectByGroundid(ground_id);
    }
}
