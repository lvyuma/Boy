package com.example.store.mapper;

import com.example.store.bean.OrderItem;

import java.util.List;

public interface OrderItemMapper {

	List<OrderItem> selectOrderItemListByOrderId(Integer orderId);

}