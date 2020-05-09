package com.example.store.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 订单实体类
 */
public class Order implements Serializable {

	private static final long serialVersionUID = 4924714836454045925L;

	private Integer id;

	private String paymentAmount;

	private Integer paymentType;

	private String postFee;

	private Integer status;

	private Date createTime;

	private Date updateTime;

	private Date paymentTime;

	private Date consignTime;

	private Date endTime;

	private Date closeTime;

	private String shippingName;

	private String shippingCode;

	private Integer userId;

	private String buyerMessage;

	private String buyerNick;

	private Integer buyerRate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(String paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public Integer getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(Integer paymentType) {
		this.paymentType = paymentType;
	}

	public String getPostFee() {
		return postFee;
	}

	public void setPostFee(String postFee) {
		this.postFee = postFee;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Date getPaymentTime() {
		return paymentTime;
	}

	public void setPaymentTime(Date paymentTime) {
		this.paymentTime = paymentTime;
	}

	public Date getConsignTime() {
		return consignTime;
	}

	public void setConsignTime(Date consignTime) {
		this.consignTime = consignTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Date getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(Date closeTime) {
		this.closeTime = closeTime;
	}

	public String getShippingName() {
		return shippingName;
	}

	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}

	public String getShippingCode() {
		return shippingCode;
	}

	public void setShippingCode(String shippingCode) {
		this.shippingCode = shippingCode;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getBuyerMessage() {
		return buyerMessage;
	}

	public void setBuyerMessage(String buyerMessage) {
		this.buyerMessage = buyerMessage;
	}

	public String getBuyerNick() {
		return buyerNick;
	}

	public void setBuyerNick(String buyerNick) {
		this.buyerNick = buyerNick;
	}

	public Integer getBuyerRate() {
		return buyerRate;
	}

	public void setBuyerRate(Integer buyerRate) {
		this.buyerRate = buyerRate;
	}

	@Override
	public String toString() {
		return "Order{" +
				"id=" + id +
				", paymentAmount='" + paymentAmount + '\'' +
				", paymentType=" + paymentType +
				", postFee='" + postFee + '\'' +
				", status=" + status +
				", createTime=" + createTime +
				", updateTime=" + updateTime +
				", paymentTime=" + paymentTime +
				", consignTime=" + consignTime +
				", endTime=" + endTime +
				", closeTime=" + closeTime +
				", shippingName='" + shippingName + '\'' +
				", shippingCode='" + shippingCode + '\'' +
				", userId=" + userId +
				", buyerMessage='" + buyerMessage + '\'' +
				", buyerNick='" + buyerNick + '\'' +
				", buyerRate=" + buyerRate +
				'}';
	}
}