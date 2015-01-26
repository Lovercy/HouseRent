package com.rent.service.city;

import java.util.List;

import com.rent.model.City;

public interface ICityService {
	/**
	 * 获取父级City列表
	 * @author Lovercy
	 * 2014/12/30
	 * @return List
	 * **/
	public List<City> getProCityList();
	
	/**
	 * 获取子级City列表
	 * @author Lovercy
	 * 2015/1/26
	 * @return List
	 * **/
	public List<City> getChilCityList(Integer proid);
}
