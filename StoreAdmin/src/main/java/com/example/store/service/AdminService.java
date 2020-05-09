package com.example.store.service;

import com.example.store.bean.Admin;
import org.springframework.web.multipart.MultipartFile;

public interface AdminService {

	/**
	 * 检查登录
	 *
	 * @param loginName 登录名
	 * @param loginPwd  登录密码
	 * @param ip        客户端IP地址
	 * @return 管理员对象
	 */
	Admin checkLogin(String loginName, String loginPwd, String ip);

	/**
	 * 获取邮箱动态码，并发送邮箱
	 *
	 * @param email 邮件地址
	 * @return 动态码
	 */
	String sendEmailCode(String email);

	/**
	 * 重置密码
	 *
	 * @param email 电子邮箱
	 * @param code  用户输入的动态码
	 * @param sCode 存储在Session中的动态码
	 * @param pwd   重置的新密码
	 */
	void resetPassword(String email, String code, String sCode, String pwd);

	/**
	 * 修改管理员密码
	 *
	 * @param id     管理员id
	 * @param pwd    旧密码
	 * @param newPwd 新密码
	 */
	void changePassword(Integer id, String pwd, String newPwd);

	/**
	 * 修改管理员个人资料
	 *
	 * @param id       管理员id
	 * @param realName 真实姓名
	 * @param mobile   手机号码
	 * @param email    电子邮箱
	 */
	void changeProfile(Integer id, String realName, String mobile, String email);

	/**
	 * 上传图片
	 *
	 * @param id    管理员id
	 * @param image 上传图片文件对象
	 * @return 存储路径
	 */
	String uploadImage(Integer id, MultipartFile image, String realPath);

}
