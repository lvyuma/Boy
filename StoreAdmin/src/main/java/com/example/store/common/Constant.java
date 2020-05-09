package com.example.store.common;

/**
 * 系统常量
 */
public interface Constant {

	/**
	 * 订单状态枚举
	 */
	enum OrderStatus {
		PENDING_PAYMENT,    //待付款
		IN_PAYMENT,         //付款中
		PENDING_SHIPPING,   //已付款(待发货)
		ALREADY_SHIPPED,    //已发货(待收货)
		CONFIRMED,          //确认收货(交易完成)
		CANCEL              //取消订单
	}

}
