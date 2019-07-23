package com.dao;

import com.entity.Sort;
import com.entity.Type;

public interface ISortDao {
    Sort selectByPrimaryKey(Integer sortId);
}
