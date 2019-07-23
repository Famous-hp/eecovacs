package com.dao;

import com.entity.Product;

public interface IProductDao {
    Product selectByPrimaryKey(Integer prid);
}
