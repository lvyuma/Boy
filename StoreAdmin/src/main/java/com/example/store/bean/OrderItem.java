package com.example.store.bean;

import java.io.Serializable;

/**
 * 订单项实体类
 */
public class OrderItem implements Serializable {

	private static final long serialVersionUID = -7669878709241879376L;

	private Integer id;

	private Integer goodsId;

	private Integer orderId;

	private String title;

	private String image;

	private Long price;

	private Integer num;

	private Long totalAmount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public Long getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Long totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Override
	public String toString() {
		return "OrderItem{" +
				"id=" + id +
				", goodsId=" + goodsId +
				", orderId=" + orderId +
				", title='" + title + '\'' +
				", image='" + image + '\'' +
				", price=" + price +
				", num=" + num +
				", totalAmount=" + totalAmount +
				'}';
	}
}