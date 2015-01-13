package com.rent.dao;

import com.rent.model.RentType;

public interface RentTypeMapper {
    int deleteByPrimaryKey(Integer typeid);

    int insert(RentType record);

    int insertSelective(RentType record);

    RentType selectByPrimaryKey(Integer typeid);

    int updateByPrimaryKeySelective(RentType record);

    int updateByPrimaryKey(RentType record);
}