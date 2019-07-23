package com.service.impl;

import com.dao.IOrderDao;
import com.entity.Order;
import com.service.IOrderService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service("orderService")
@Transactional
@MapperScan("com.dao")
public class OrderService implements IOrderService {
    @Autowired
    private IOrderDao dao;

    @Override
    public Order selectByPrimaryKey(Integer oid) {
        return dao.selectByPrimaryKey(oid);
    }

    @Override
    public int insert(Order o) {
        return dao.insert(o);
    }

    @Override
    public int updateByPrimaryKeySelective(Order o) {
        return dao.updateByPrimaryKeySelective(o);
    }

    @Override
    public int deleteByPrimaryKey(Integer oid) {
        return dao.deleteByPrimaryKey(oid);
    }

    @Override
    public List<Order> selectAllOrder() {
        return dao.selectAllOrder();
    }
}
