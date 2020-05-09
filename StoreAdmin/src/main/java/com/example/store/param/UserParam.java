package com.example.store.param;

/**
 * 用户查询参数类
 */
public class UserParam extends BaseParam {

	// 用户名
	private String username;
	// 电子邮箱
	private String email;
	// 电话号码
	private String phone;
	// 用户状态
	private Integer status;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
