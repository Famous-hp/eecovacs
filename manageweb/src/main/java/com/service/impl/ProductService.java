package com.service.impl;

import com.dao.IProductDao;
import com.entity.Product;
import com.service.IProductService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("productService")
@Transactional
@MapperScan("com.dao")
public class ProductService implements IProductService{
    @Autowired
    private IProductDao dao;

    @Override
    public Product selectByPrimaryKey(Integer prid) {
        return dao.selectByPrimaryKey(prid);
    }

    @Override
    public int insert(Product p) {
        return dao.insert(p);
    }

    @Override
    public int deleteByPrimaryKey(Integer prid) {
        return dao.deleteByPrimaryKey(prid);
    }

    @Override
    public int updateByPrimaryKey(Product p) {
        return dao.updateByPrimaryKey(p);
    }

    @Override
    public List<Product> selectAllProduct() {
        return dao.selectAllProduct();
    }

    @Override
    public List<Product> selectPag(Map mp) {
        return dao.selectPag(mp);
    }

    @Override
    public HashMap selectPagingMohu(Integer pageNumber, Integer pageSize, Map<String, Object> mp) {
        return null;
    }

    @Override
    public int selectCount(Map mp) {
        return dao.selectCount(mp);
    }


}
