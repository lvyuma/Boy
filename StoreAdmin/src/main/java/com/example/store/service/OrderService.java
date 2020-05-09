package com.example.store.service;

import com.example.store.bean.Order;
import com.example.store.bean.OrderItem;
import com.example.store.common.PageObject;
import com.example.store.param.OrderParam;

import java.util.List;

public interface OrderService {

	PageObject getOrderPageObject(OrderParam orderParam);

	Order getOrderById(Integer id);

	List<OrderItem> getOrderItemListByOrderId(Integer orderId);

	void deliverGoods(Integer orderId);

	void confirmReceivedGoods(Integer orderId);
}
