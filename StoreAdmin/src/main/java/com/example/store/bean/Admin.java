package com.example.store.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 管理员实体类20240511
 */
//admint1
public class Admin implements Serializable {

	private static final long serialVersionUID = 7786299649043214124L;

	private Integer id;
	private String loginName;
	private String loginPwd;
	private String realName;
	private String mobile;
	private String email;
	private String image;
	private String lastLoginIp;
	private Date lastLoginTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Admin admin = (Admin) o;

		if (id != null ? !id.equals(admin.id) : admin.id != null) return false;
		if (loginName != null ? !loginName.equals(admin.loginName) : admin.loginName != null) return false;
		if (loginPwd != null ? !loginPwd.equals(admin.loginPwd) : admin.loginPwd != null) return false;
		if (realName != null ? !realName.equals(admin.realName) : admin.realName != null) return false;
		if (mobile != null ? !mobile.equals(admin.mobile) : admin.mobile != null) return false;
		if (email != null ? !email.equals(admin.email) : admin.email != null) return false;
		if (image != null ? !image.equals(admin.image) : admin.image != null) return false;
		if (lastLoginIp != null ? !lastLoginIp.equals(admin.lastLoginIp) : admin.lastLoginIp != null) return false;
		return lastLoginTime != null ? lastLoginTime.equals(admin.lastLoginTime) : admin.lastLoginTime == null;
	}

	@Override
	public int hashCode() {
		int result = id != null ? id.hashCode() : 0;
		result = 31 * result + (loginName != null ? loginName.hashCode() : 0);
		result = 31 * result + (loginPwd != null ? loginPwd.hashCode() : 0);
		result = 31 * result + (realName != null ? realName.hashCode() : 0);
		result = 31 * result + (mobile != null ? mobile.hashCode() : 0);
		result = 31 * result + (email != null ? email.hashCode() : 0);
		result = 31 * result + (image != null ? image.hashCode() : 0);
		result = 31 * result + (lastLoginIp != null ? lastLoginIp.hashCode() : 0);
		result = 31 * result + (lastLoginTime != null ? lastLoginTime.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "Admin{" +
				"id='" + id + '\'' +
				", loginName='" + loginName + '\'' +
				", loginPwd='" + loginPwd + '\'' +
				", realName='" + realName + '\'' +
				", mobile='" + mobile + '\'' +
				", email='" + email + '\'' +
				", image='" + image + '\'' +
				", lastLoginIp='" + lastLoginIp + '\'' +
				", lastLoginTime='" + lastLoginTime + '\'' +
				'}';
	}
}
