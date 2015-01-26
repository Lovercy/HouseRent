package com.rent.dao;

import java.util.List;

import com.rent.model.City;

public interface CityMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer cid);
    
    List<City> selectProColumn();
    
    List<City> selectChilColumn(Integer proid);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
}