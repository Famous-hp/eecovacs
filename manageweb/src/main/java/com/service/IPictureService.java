package com.service;

import com.entity.Picture;

import java.util.List;
import java.util.Map;

public interface IPictureService {
    int insert(Picture p);
    Picture selectByPrimaryKey(Integer picId);
    int deleteByPrimaryKey(Integer picId);
    int updateByPrimaryKey(int picId);
    int deleteByPrid(Integer prid);
    List<Picture> selectByID(Map mp);
}
