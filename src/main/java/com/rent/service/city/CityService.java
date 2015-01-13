package com.rent.service.city;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rent.dao.CityMapper;
import com.rent.model.City;

@Service("cityService")
public class CityService implements ICityService {
	@Autowired
	private CityMapper cityMapper;
	
	
	public List<City> getCityList() {
		List<City> result=cityMapper.selectAllColumn();
		return result;
	}
	
	//------getter/setter------
	public CityMapper getCityMapper() {
		return cityMapper;
	}
	public void setCityMapper(CityMapper cityMapper) {
		this.cityMapper = cityMapper;
	}

}
