package com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.entity.*;
public interface IProductService {
    Product selectByPrimaryKey(Integer prid);
    int insert(Product p);
    int deleteByPrimaryKey(Integer prid);
    int updateByPrimaryKey(Product p);
    List<Product> selectAllProduct();
    List<Product> selectPag(Map mp);
    HashMap selectPagingMohu(Integer pageNumber, Integer pageSize,Map<String,Object> mp);
    int selectCount(Map mp);
}
