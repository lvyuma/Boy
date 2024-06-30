package com.example.store.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品实体类
 */
//goods master
public class Goods implements Serializable {

	private static final long serialVersionUID = -5038484553923425976L;

	private Integer id;
	private Integer categoryId;
	private String itemType;
	private String title;
	private String sellPoint;
	private Long price;
	private Integer num;
	private String barcode;
	private String image;
	private Integer status;
	private Integer priority;
	private String createdUser;
	private Date createdTime;
	private String modifiedUser;
	private Date modifiedTime;
	private Integer saltGoodsNum;

	private String categoryName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSellPoint() {
		return sellPoint;
	}

	public void setSellPoint(String sellPoint) {
		this.sellPoint = sellPoint;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
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

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getsaltGoodsNum(){ return saltGoodsNum; }

	public void setSaltGoodsNum(Integer saltGoodsNum){this.saltGoodsNum=saltGoodsNum; }


	@Override
	public String toString() {
		return "Goods{" +
				"id=" + id +
				", saltGoodsNum=" + saltGoodsNum +'\'' +
				", categoryId=" + categoryId +
				", itemType='" + itemType + '\'' +
				", title='" + title + '\'' +
				", sellPoint='" + sellPoint + '\'' +
				", price=" + price +
				", num=" + num +
				", barcode='" + barcode + '\'' +
				", image='" + image + '\'' +
				", status=" + status +
				", priority=" + priority +
				", createdUser='" + createdUser + '\'' +
				", createdTime=" + createdTime +
				", modifiedUser='" + modifiedUser + '\'' +
				", modifiedTime=" + modifiedTime +
				", categoryName='" + categoryName + '\'' +
				'}';
	}
}
