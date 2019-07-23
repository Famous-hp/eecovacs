package com.service.impl;

import com.dao.ICellDao;
import com.entity.Cell;
import com.service.ICellService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("cellService")
@Transactional
@MapperScan("com.dao")
public class CellService implements ICellService {
    @Autowired
    private ICellDao dao;
    @Override
    public List<Cell> selectAllCell() {
        return dao.selectAllCell();
    }

    @Override
    public Cell selectByPrimaryKey(Integer cellId) {
        return dao.selectByPrimaryKey(cellId);
    }
}
