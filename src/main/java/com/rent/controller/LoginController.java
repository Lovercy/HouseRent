package com.rent.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.rent.model.User;
import com.rent.service.user.IUserService;


@Controller
@RequestMapping("/loginController")
public class LoginController{
	@Autowired
	private IUserService userService;
	
	
	@RequestMapping(value="/checkUser",method=RequestMethod.POST)
	public String checkUser(@RequestParam("username")String username,@RequestParam("password")String password,HttpServletRequest request){
		List<User> users=userService.checkUser(username, password);
		if(users.size()==1){
			HttpSession sessions= request.getSession();
			sessions.setAttribute("user", users.get(0));
			return "main";
		}else{
			return "error";
		}
	}
	public IUserService getUserService() {
		return userService;
	}
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}