package com.example.store.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户实体类
 */
public class User implements Serializable {

	private static final long serialVersionUID = 6571602025904211422L;

	private Integer id;
	private String username;
	private String password;
	private String realName;
	private String phone;
	private String email;
	private String image;
	private Integer gender;
	private Integer status;
	private String createdUser;
	private Date createdTime;
	private String modifiedUser;
	private Date modifiedTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCreatedUser() {
		return createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}

	public String getModifiedUser() {
		return modifiedUser;
	}

	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}

	public Date getModifiedTime() {
		return modifiedTime;
	}

	public void setModifiedTime(Date modifiedTime) {
		this.modifiedTime = modifiedTime;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		User user = (User) o;

		if (id != null ? !id.equals(user.id) : user.id != null) return false;
		if (username != null ? !username.equals(user.username) : user.username != null) return false;
		if (password != null ? !password.equals(user.password) : user.password != null) return false;
		if (realName != null ? !realName.equals(user.realName) : user.realName != null) return false;
		if (phone != null ? !phone.equals(user.phone) : user.phone != null) return false;
		if (email != null ? !email.equals(user.email) : user.email != null) return false;
		if (image != null ? !image.equals(user.image) : user.image != null) return false;
		if (gender != null ? !gender.equals(user.gender) : user.gender != null) return false;
		if (status != null ? !status.equals(user.status) : user.status != null) return false;
		if (createdUser != null ? !createdUser.equals(user.createdUser) : user.createdUser != null) return false;
		if (createdTime != null ? !createdTime.equals(user.createdTime) : user.createdTime != null) return false;
		if (modifiedUser != null ? !modifiedUser.equals(user.modifiedUser) : user.modifiedUser != null) return false;
		return modifiedTime != null ? modifiedTime.equals(user.modifiedTime) : user.modifiedTime == null;
	}

	@Override
	public int hashCode() {
		int result = id != null ? id.hashCode() : 0;
		result = 31 * result + (username != null ? username.hashCode() : 0);
		result = 31 * result + (password != null ? password.hashCode() : 0);
		result = 31 * result + (realName != null ? realName.hashCode() : 0);
		result = 31 * result + (phone != null ? phone.hashCode() : 0);
		result = 31 * result + (email != null ? email.hashCode() : 0);
		result = 31 * result + (image != null ? image.hashCode() : 0);
		result = 31 * result + (gender != null ? gender.hashCode() : 0);
		result = 31 * result + (status != null ? status.hashCode() : 0);
		result = 31 * result + (createdUser != null ? createdUser.hashCode() : 0);
		result = 31 * result + (createdTime != null ? createdTime.hashCode() : 0);
		result = 31 * result + (modifiedUser != null ? modifiedUser.hashCode() : 0);
		result = 31 * result + (modifiedTime != null ? modifiedTime.hashCode() : 0);
		return result;
	}

	@Override
	public String toString() {
		return "User{" +
				"id=" + id +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", realName='" + realName + '\'' +
				", phone='" + phone + '\'' +
				", email='" + email + '\'' +
				", image='" + image + '\'' +
				", gender=" + gender +
				", status=" + status +
				", createdUser='" + createdUser + '\'' +
				", createdTime=" + createdTime +
				", modifiedUser='" + modifiedUser + '\'' +
				", modifiedTime=" + modifiedTime +
				'}';
	}
}
