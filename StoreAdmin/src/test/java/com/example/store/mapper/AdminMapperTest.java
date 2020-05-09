package com.example.store.mapper;

import com.example.store.bean.Admin;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-dao.xml")
public class AdminMapperTest {

	@Resource
	private AdminMapper adminMapper;

	@Test
	public void selectByLoginName() {
		Admin admin = adminMapper.selectByLoginName("admin");
		System.out.println(admin);
		Assert.assertNotNull(admin);
	}

}