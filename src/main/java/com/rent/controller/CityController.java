package com.rent.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rent.model.City;
import com.rent.service.city.ICityService;


@Controller
@RequestMapping("/cityController")
public class CityController {
	@Autowired
	private ICityService cityService; 
	
	
	/*@Responsebody 表示该方法的返回结果直接写入HTTP response body中,一般在异步获取数据时使用.
	在使用@RequestMapping后，返回值通常解析为跳转路径，
	加上@Responsebody后返回结果不会被解析为跳转路径，而是直接写入HTTP response body中. */
	
	@RequestMapping(value="/showProCity",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> showProCity(){
		List<City> citys=cityService.getProCityList();
		Map<String,Object> result=new HashMap<String,Object>();
		result.put("citys",citys);
		return result;
	}
	
	@RequestMapping(value="/showChilCity",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> showChilCity(@RequestParam("proid") Integer proid){
		List<City> citys=cityService.getChilCityList(proid);
		Map<String,Object> result=new HashMap<String,Object>();
		result.put("citys",citys);
		return result;
	}

	public ICityService getCityService() {
		return cityService;
	}

	public void setCityService(ICityService cityService) {
		this.cityService = cityService;
	}

}
