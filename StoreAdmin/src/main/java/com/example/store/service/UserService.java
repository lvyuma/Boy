package com.example.store.service;

import com.example.store.bean.User;
import com.example.store.common.PageObject;
import com.example.store.param.UserParam;

public interface UserService {

	PageObject getUserPageObject(UserParam userParam);

	User getUserById(Integer id);

	void addUser(User user);

	void updateUser(User user);

	void deleteUser(Integer id);

	void enabledUser(Integer id);

	void disabledUser(Integer id);

}
