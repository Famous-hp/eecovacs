package com.service;

import com.entity.Picture;

import java.util.List;

public interface IPictrueService {
    List<Picture> selectByGroundid(Integer ground_id);
}
