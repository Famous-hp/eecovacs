package com.service;

import com.entity.Cell;

import java.util.List;

public interface ICellService {
    List<Cell> selectAllCell();
    Cell selectByPrimaryKey(Integer cellId);
}
