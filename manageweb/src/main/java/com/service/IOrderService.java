package com.service;

import com.entity.Order;

import java.util.List;

public interface IOrderService {
    Order selectByPrimaryKey(Integer oid);
    int insert(Order o);
    int updateByPrimaryKeySelective(Order o);
    int deleteByPrimaryKey(Integer oid);
    List<Order> selectAllOrder();
}
