package com.dao;

import com.entity.*;

public interface IGoundDao {
    Ground selectByPrimaryKey(Integer gid);
    int insert(Ground g);

}
