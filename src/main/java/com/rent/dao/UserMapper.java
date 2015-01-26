package com.rent.dao;

import java.util.List;
import java.util.Map;

import com.rent.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);
    
    //传递多个参数时.可以将参数封装成Bean后传递
    int insertSelective(User record);

    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    //传递多个参数时可以将多个参数封装成map后传递
    List<User> getUsersbyUsernameAndPassword(Map<String,String> param);
    
}