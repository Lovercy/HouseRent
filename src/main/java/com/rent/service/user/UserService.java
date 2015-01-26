package com.rent.service.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.dao.UserMapper;
import com.rent.model.User;

@Service("userService")
public class UserService implements IUserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> checkUser(String username,String password){
		Map<String,String> param=new HashMap<String,String>();
		param.put("username", username);
		param.put("password",password);
		List<User> users=userMapper.getUsersbyUsernameAndPassword(param);
		return users;
	}
	@Override
	public int addUser(User user) {
		return userMapper.insert(user);	
	}
	public UserMapper getUserMapper() {
		return userMapper;
	}
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
}
