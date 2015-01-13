package com.rent.dao;

import com.rent.model.UserAndApartment;

public interface UserAndApartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserAndApartment record);

    int insertSelective(UserAndApartment record);

    UserAndApartment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserAndApartment record);

    int updateByPrimaryKey(UserAndApartment record);
}