package com.example.store.service;

import com.example.store.bean.Order;
import com.example.store.bean.OrderItem;
import com.example.store.common.Constant;
import com.example.store.common.PageObject;
import com.example.store.mapper.OrderItemMapper;
import com.example.store.mapper.OrderMapper;
import com.example.store.param.OrderParam;
import com.example.store.exception.ServiceException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderMapper orderMapper;
	@Resource
	private OrderItemMapper orderItemMapper;

	@Override
	public PageObject getOrderPageObject(OrderParam orderParam) {
		List<Order> rows = orderMapper.selectOrderList(orderParam);
		int total = orderMapper.selectOrderCount(orderParam);
		return new PageObject(total, rows);
	}

	@Override
	public Order getOrderById(Integer id) {
		return orderMapper.selectOrderById(id);
	}

	@Override
	public List<OrderItem> getOrderItemListByOrderId(Integer orderId) {
		return orderItemMapper.selectOrderItemListByOrderId(orderId);
	}

	@Override
	public void deliverGoods(Integer orderId) {
		if (orderId == null) {
			throw new ServiceException("订单号参数不能为空");
		}

		Order order = orderMapper.selectOrderById(orderId);
		if (order == null) {
			throw new ServiceException("订单不存在！");
		}

		if (order.getStatus() != Constant.OrderStatus.PENDING_SHIPPING.ordinal()) {
			throw new ServiceException("订单不是待发货状态，不可发货！");
		}

		orderMapper.updateStatusAsShippedById(orderId, Constant.OrderStatus.ALREADY_SHIPPED.ordinal());
	}

	@Override
	public void confirmReceivedGoods(Integer orderId) {
		if (orderId == null) {
			throw new ServiceException("订单号参数不能为空");
		}

		Order order = orderMapper.selectOrderById(orderId);
		if (order == null) {
			throw new ServiceException("订单不存在！");
		}

		if (order.getStatus() != Constant.OrderStatus.ALREADY_SHIPPED.ordinal()) {
			throw new ServiceException("订单没有发货，不可确认收货！");
		}

		orderMapper.updateStatusAsConfirmedById(orderId, Constant.OrderStatus.CONFIRMED.ordinal());
	}

}
