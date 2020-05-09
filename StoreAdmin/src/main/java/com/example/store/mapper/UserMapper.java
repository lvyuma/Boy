package com.example.store.mapper;

import com.example.store.bean.User;
import com.example.store.param.UserParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

	List<User> selectUserList(UserParam userParam);

	int selectUserCount(UserParam userParam);

	User selectUserById(Integer id);

	void insertUser(User user);

	void updateUser(User user);

	void updateUserStatusById(@Param("id") Integer id, @Param("status") Integer status);

}
