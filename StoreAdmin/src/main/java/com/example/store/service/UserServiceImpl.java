package com.example.store.service;

import com.example.store.bean.User;
import com.example.store.common.PageObject;
import com.example.store.mapper.UserMapper;
import com.example.store.param.UserParam;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;

	@Override
	public PageObject getUserPageObject(UserParam userParam) {
		List<User> rows = userMapper.selectUserList(userParam);
		int total = userMapper.selectUserCount(userParam);
		return new PageObject(total, rows);
	}

	@Override
	public User getUserById(Integer id) {
		return userMapper.selectUserById(id);
	}

	@Override
	public void addUser(User user) {
		// TODO
		user.setStatus(1);
		user.setCreatedTime(new Date());
		userMapper.insertUser(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO
		user.setModifiedTime(new Date());
		userMapper.updateUser(user);
	}

	@Override
	public void deleteUser(Integer id) {
		userMapper.updateUserStatusById(id, 0);
	}

	@Override
	public void enabledUser(Integer id) {
		userMapper.updateUserStatusById(id, 1);
	}

	@Override
	public void disabledUser(Integer id) {
		userMapper.updateUserStatusById(id, 0);
	}

}
