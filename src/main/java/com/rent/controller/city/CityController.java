package com.rent.controller.city;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rent.model.City;
import com.rent.service.city.ICityService;


@Controller
@RequestMapping("/cityController")
public class CityController {
	@Autowired
	private ICityService cityService; 
	
	@RequestMapping("/showCity")
	public String showCity(HttpServletRequest request){
		List<City> citys=cityService.getCityList();
		request.setAttribute("citys",citys);
		return "showCity";
	}

	public ICityService getCityService() {
		return cityService;
	}

	public void setCityService(ICityService cityService) {
		this.cityService = cityService;
	}

}
