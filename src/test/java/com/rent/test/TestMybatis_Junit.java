package com.rent.test;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.rent.model.City;
import com.rent.service.city.ICityService;

public class TestMybatis_Junit {
	private static final Logger logger=Logger.getLogger(TestMybatis_Junit.class);
	
	private ApplicationContext ctx;
	private ICityService cityService;
	
	@Before
	public void before(){
		ctx=new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-mybatis.xml"});
		cityService=(ICityService)ctx.getBean("cityService");
	}
	@Test
	public void testJuint() {
		List<City> citys=cityService.getCityList();
		logger.info(JSON.toJSONString(citys));
	}

}
