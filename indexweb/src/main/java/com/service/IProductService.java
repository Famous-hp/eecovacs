package com.service;

import com.entity.Product;

public interface IProductService {
    Product selectByPrimaryKey(Integer prid);
}
