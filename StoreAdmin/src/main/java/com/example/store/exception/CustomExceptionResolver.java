package com.example.store.exception;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 自定义异常解析器
 * Created by liangshishen.
 */
public class CustomExceptionResolver extends SimpleMappingExceptionResolver {

	@Override
	protected ModelAndView doResolveException(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler, Exception ex) {

		// 开发阶段打印异常信息，方便排错
		ex.printStackTrace();

		ResponseBody responseBody = ((HandlerMethod) handler).getMethodAnnotation(ResponseBody.class);

		// 若当前方法上没有`@ResponseBody`注解，表示不是AJAX请求的方法，则返回默认视图
		if (responseBody == null || !isAjaxRequest(request)) {
			// 如果不是自定义的业务逻辑异常，则给用户统一的提示
			if (!(ex instanceof ServiceException)) {
				ex = new Exception("系统异常，请联系管理员。", ex);
			}
			return super.doResolveException(request, response, handler, ex);
		}

		Map<String, Object> model = new HashMap<>();

		if (ex instanceof ServiceException) {
			// 如果是自定义的业务逻辑异常，则响应非法操作的提示信息
			ServiceException se = (ServiceException) ex;
			model.put("state", se.getCode());
			model.put("message", se.getMessage());
		} else {
			// 如果不是自定义的业务逻辑异常，则给用户统一的提示
			model.put("state", 0);
			model.put("message", "系统异常，请联系管理员。");
		}

		return new ModelAndView(new MappingJackson2JsonView(), model);
	}

	// 检查当前请求是否为AJAX请求
	private boolean isAjaxRequest(HttpServletRequest request) {
		return "XMLHttpRequest".equalsIgnoreCase(request.getHeader("X-Requested-With"))
				|| request.getHeader("accept").contains("application/json");
	}

}
