package com.dao;

import com.entity.Picture;

import java.util.List;

public interface IPictureDao {
    List<Picture> selectByGroundid(Integer ground_id);
}
