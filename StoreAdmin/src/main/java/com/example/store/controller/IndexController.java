package com.example.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class IndexController {

	// 转发到主页
	@RequestMapping("/showIndex.do")
	public String showIndex() {
		return "index";
	}

	// 转发到欢迎页面
	@RequestMapping("/showWelcome.do")
	public String showWelcome() {
		return "welcome";
	}

}
