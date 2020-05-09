package com.example.store.mapper;

import com.example.store.bean.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {

	/**
	 * 根据登录名查询管理员
	 *
	 * @param loginName 登录名
	 * @return 管理员对象
	 */
	Admin selectByLoginName(String loginName);

	/**
	 * 根据电子邮箱查询管理员
	 *
	 * @param email 电子邮箱
	 * @return 管理员对象
	 */
	Admin selectByEmail(String email);

	/**
	 * 根据id查询管理员
	 *
	 * @param id 管理员id
	 * @return 管理员对象
	 */
	Admin selectById(Integer id);

	/**
	 * 根据电子邮箱修改密码
	 *
	 * @param email 电子邮箱
	 * @param pwd   密码
	 */
	void updatePwdByEmail(@Param("email") String email, @Param("pwd") String pwd);

	/**
	 * 根据id修改管理员
	 *
	 * @param admin 管理员对象
	 */
	void updateAdminById(Admin admin);

}
