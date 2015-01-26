package com.rent.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.rent.model.Person;
import com.rent.model.User;
import com.rent.service.person.IPersonService;

@Controller
@RequestMapping("/personController")
public class PersonController {
	@Autowired
	private IPersonService personService;
	
	@RequestMapping(value="/addPerson",method=RequestMethod.POST)
	@ResponseBody
	public String addPerson(Person person,HttpServletRequest request){
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("user");
		person.setUserid(user.getUserid());
		int num=personService.addPerson(person);
		System.out.println("num:"+num);
		if(num==1){
			return "用户基本信息添加成功!";
		}else{
			return "用户基本信息添加失败!";
		}
	}

	public IPersonService getPersonService() {
		return personService;
	}

	public void setPersonService(IPersonService personService) {
		this.personService = personService;
	}

}
