package com.rent.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rent.model.User;
import com.rent.service.user.IUserService;


@Controller
@RequestMapping("/registerController")
public class RegisterController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/register")
	@ResponseBody
	public int addUser(@RequestParam("username")String username,
					   @RequestParam("password")String password,
					   @RequestParam("email")String email,
					   @RequestParam("type")int type){
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setType(type);
		return userService.addUser(user);
	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
}
