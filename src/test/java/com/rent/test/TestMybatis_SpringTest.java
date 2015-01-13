package com.rent.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rent.model.City;
import com.rent.service.city.ICityService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml","classpath:spring-mybatis.xml"})
public class TestMybatis_SpringTest {
	@Autowired
	private ICityService cityService;
	
	@Test
	public void testSpring() {
		List<City> citys=cityService.getCityList();
		for(int i=0;i<citys.size();i++){
			System.out.println(citys.get(i)==null?"null":citys.get(i).getCityname());
		}
	}
	
	public ICityService getCityService() {
		return cityService;
	}

	public void setCityService(ICityService cityService) {
		this.cityService = cityService;
	}
}
