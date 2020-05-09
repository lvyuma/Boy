package com.example.store.controller;

import com.example.store.common.JsonResult;
import com.example.store.common.PageObject;
import com.example.store.param.OrderParam;
import com.example.store.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/admin/order")
public class OrderController {

	@Resource
	private OrderService orderService;

	@RequestMapping("/showOrderList.do")
	public String showOrderList() {
		return "orderList";
	}

	@RequestMapping("/showOrderDetail.do")
	public String showOrderDetail(Integer orderId, Model model) {
		model.addAttribute("order", orderService.getOrderById(orderId));
		model.addAttribute("orderItemList", orderService.getOrderItemListByOrderId(orderId));
		return "orderDetail";
	}

	@RequestMapping("/getOrderPageObject.do")
	@ResponseBody
	public JsonResult getOrderPageObject(OrderParam orderParam) {
		PageObject pageObject = orderService.getOrderPageObject(orderParam);
		return new JsonResult<>(1, "OK", pageObject);
	}

	@RequestMapping("/deliverGoods.do")
	@ResponseBody
	public JsonResult deliverGoods(Integer orderId) {
		orderService.deliverGoods(orderId);
		return new JsonResult(1, "发货成功！");
	}

	@RequestMapping("/confirmReceivedGoods.do")
	@ResponseBody
	public JsonResult confirmReceivedGoods(Integer orderId) {
		orderService.confirmReceivedGoods(orderId);
		return new JsonResult(1, "确认收货成功！");
	}

}
