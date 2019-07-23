package com.service;

import com.entity.Sort;

public interface ISortService {
    Sort selectByPrimaryKey(Integer sortId);
}
