package com.example.store.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品分类实体类
 */
//master
	//第五次提交
	//第七次提交
	//t5
public class GoodsCategory  {

	private static final long serialVersionUID = 7291330842760622197L;

	private Integer id;
	private Integer parentId;
	private String name;
	private Integer status;
	private Integer sortOrder;
	private Integer isParent;
	private String createdUser;
	private Date createdTime;
	private String modifiedUser;
	private Date modifiedTime;

	private String parentName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	public Integer getIsParent() {
		return isParent;
	}

	public void setIsParent(Integer isParent) {
		this.isParent = isParent;
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

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	@Override
	public String toString() {
		return "GoodsCategory{" +
				"id=" + id +
				", parentId=" + parentId +
				", name='" + name + '\'' +
				", status=" + status +
				", sortOrder=" + sortOrder +
				", isParent=" + isParent +
				", createdUser='" + createdUser + '\'' +
				", createdTime=" + createdTime +
				", modifiedUser='" + modifiedUser + '\'' +
				", modifiedTime=" + modifiedTime +
				", parentName='" + parentName + '\'' +
				'}';
	}
}