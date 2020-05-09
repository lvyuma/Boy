package com.example.store.controller;

import com.example.store.bean.User;
import com.example.store.common.JsonResult;
import com.example.store.common.PageObject;
import com.example.store.param.UserParam;
import com.example.store.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/admin/user")
public class UserController {

	@Resource
	private UserService userService;

	// 转发到用户列表页面
	@RequestMapping("/showUserList.do")
	public String showUserList() {
		return "userList";
	}

	// 转发到用户表单页面
	@RequestMapping("/showUserForm.do")
	public String showUserForm(Integer id, Model model) {
		User user = null;
		if (id != null) {
			user = userService.getUserById(id);
		} else {
			user = new User();
		}
		model.addAttribute("user", user);
		return "userForm";
	}

	@RequestMapping("/getUserPageObject.do")
	@ResponseBody
	public JsonResult getUserPageObject(UserParam userParam) {
		PageObject pageObject = userService.getUserPageObject(userParam);
		return new JsonResult<>(1, "OK", pageObject);
	}

	@RequestMapping("/addUser.do")
	@ResponseBody
	public JsonResult addUser(User user) {
		userService.addUser(user);
		return new JsonResult<>(1, "添加用户成功！");
	}

	@RequestMapping("/updateUser.do")
	@ResponseBody
	public JsonResult updateUser(User user) {
		userService.updateUser(user);
		return new JsonResult<>(1, "修改用户成功！");
	}

	@RequestMapping("/deleteUser.do")
	@ResponseBody
	public JsonResult deleteUser(Integer id) {
		userService.deleteUser(id);
		return new JsonResult<>(1, "删除用户成功！");
	}

	@RequestMapping("/enabledUser.do")
	@ResponseBody
	public JsonResult enabledUser(Integer id) {
		userService.enabledUser(id);
		return new JsonResult<>(1, "激活用户成功！");
	}

	@RequestMapping("/disabledUser.do")
	@ResponseBody
	public JsonResult disabledUser(Integer id) {
		userService.disabledUser(id);
		return new JsonResult<>(1, "禁用用户成功！");
	}

}
