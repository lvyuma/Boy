package com.example.store.mapper;

import com.example.store.bean.Order;
import com.example.store.param.OrderParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

	List<Order> selectOrderList(OrderParam orderParam);

	int selectOrderCount(OrderParam orderParam);

	Order selectOrderById(Integer id);

	void updateStatusAsShippedById(@Param("id") Integer id, @Param("status") Integer status);

	void updateStatusAsConfirmedById(@Param("id") Integer id, @Param("status") Integer status);

}