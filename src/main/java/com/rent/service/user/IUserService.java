package com.rent.service.user;

import java.util.List;

import com.rent.model.User;

public interface IUserService {
	
	public List<User> checkUser(String username,String password);
	public int addUser(User user);
}
