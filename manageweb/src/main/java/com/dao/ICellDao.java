package com.dao;

import com.entity.*;

import java.util.List;


public interface ICellDao {
    List<Cell> selectAllCell();
    Cell selectByPrimaryKey(Integer cellId);
}
