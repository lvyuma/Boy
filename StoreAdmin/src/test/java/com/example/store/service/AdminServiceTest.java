package com.example.store.service;

import com.example.store.bean.Admin;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-dao.xml", "classpath:spring-service.xml"})
public class AdminServiceTest {

	@Resource
	private AdminService adminService;

	@Test
	public void checkLogin() {
		Admin admin = adminService.checkLogin("admin", "admin123", "127.0.0.1");
		System.out.println(admin);
	}

}