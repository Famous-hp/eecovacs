package com.service.impl;

import com.dao.IPictureDao;
import com.entity.Picture;
import com.service.IPictureService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("pictureService")
@Transactional
@MapperScan("com.dao")
public class PictureService implements IPictureService{

    @Autowired
    private IPictureDao dao;
    @Override
    public int insert(Picture p) {
        return dao.insert(p);
    }

    @Override
    public Picture selectByPrimaryKey(Integer picId) {
        return dao.selectByPrimaryKey(picId);
    }

    @Override
    public int deleteByPrimaryKey(Integer picId) {
        return dao.deleteByPrimaryKey(picId);
    }

    @Override
    public int updateByPrimaryKey(int picId) {
        return dao.updateByPrimaryKey(picId);
    }

    @Override
    public int deleteByPrid(Integer prid) {
        return dao.deleteByPrid(prid);
    }

    @Override
    public List<Picture> selectByID(Map mp) {
        return dao.selectByID(mp);
    }
}
