package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.*;
public interface IProductDao {
    Product selectByPrimaryKey(Integer prid);
    int insert(Product p);
    int deleteByPrimaryKey(Integer prid);
    int updateByPrimaryKey(Product p);
    List<Product> selectAllProduct();
    List<Product> selectPag(Map mp);
    int selectCount(Map mp);
    /*<select id="selectAllProduct" resultMap="BaseResultMap" parameterType="java.lang.Integer" >
    select *
    from product
  </select>*/
}
