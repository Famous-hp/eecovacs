package com.dao;

import com.entity.Picture;

import java.util.List;
import java.util.Map;

public interface IPictureDao {
    int insert(Picture p);
    Picture selectByPrimaryKey(Integer picId);
    int deleteByPrimaryKey(Integer picId);
    int deleteByPrid(Integer prid);
    int updateByPrimaryKey(int picId);
    List<Picture> selectByID(Map mp);
}
