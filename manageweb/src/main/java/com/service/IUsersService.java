package com.service;

import com.entity.Users;

import java.util.List;
import java.util.Map;

public interface IUsersService {
    List<Users> selectAllUsers();
    Users selectByPrimaryKey(Integer uid);
    Users selectByUser(Map map);
    int updateByPrimaryKeySelective(Users u);
}
