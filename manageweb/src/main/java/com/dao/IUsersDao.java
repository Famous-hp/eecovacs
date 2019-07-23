package com.dao;

import com.entity.Users;

import java.util.List;
import java.util.Map;

public interface IUsersDao {
    List<Users> selectAllUsers();
    Users selectByPrimaryKey(Integer uid);
    Users selectByUser(Map map);
    int updateByPrimaryKeySelective(Users u);
}
