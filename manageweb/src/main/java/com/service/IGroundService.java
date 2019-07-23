package com.service;

import com.entity.*;

public interface IGroundService {
    Ground selectByPrimaryKey(Integer gid);
    int insert(Ground g);
}
