package com.service.impl;

import com.dao.IProductDao;
import com.entity.Product;
import com.service.IProductService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("productsService")
@Transactional
@MapperScan("com.dao")
public class ProductService implements IProductService{
    @Autowired
    private IProductDao dao;
    @Override
    public Product selectByPrimaryKey(Integer prid) {
        return dao.selectByPrimaryKey(prid);
    }
}
