package com.service.impl;

import com.dao.IUsersDao;
import com.entity.Users;
import com.service.IUsersService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("usersService")
@Transactional
@MapperScan("com.dao")
public class UsersService implements IUsersService{

    @Autowired
    private IUsersDao dao;

    @Override
    public List<Users> selectAllUsers() {
        return dao.selectAllUsers();
    }

    @Override
    public Users selectByPrimaryKey(Integer uid) {
        return dao.selectByPrimaryKey(uid);
    }

    @Override
    public Users selectByUser(Map map) {
        return dao.selectByUser(map);
    }

    @Override
    public int updateByPrimaryKeySelective(Users u) {
        return dao.updateByPrimaryKeySelective(u);
    }
}
