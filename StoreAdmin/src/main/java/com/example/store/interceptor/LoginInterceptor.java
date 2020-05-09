package com.example.store.interceptor;

import com.example.store.bean.Admin;
import com.example.store.mapper.AdminMapper;
import com.example.store.common.WebUtil;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录拦截器
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Resource
	private AdminMapper adminMapper;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// 获取登录过的管理员对象
		Object obj = request.getSession().getAttribute("admin");
		// 如果obj不为空，说明已经登录过了，直接放行
		if (obj != null) {
			return true;
		}
		// 如果obj为空，检查是否为自动登录，若是自动登录则放行
		if (isAutoLogin(request)) {
			return true;
		}
		// 如果没有自动登录，则重定向到登录页面
		response.sendRedirect(request.getContextPath() + "/admin/showLogin.do");
		// 返回false拦截执行
		return false;
	}

	/**
	 * 检查是否自动登录成功
	 *
	 * @param request 请求对象
	 * @return true:是，false:否
	 */
	private boolean isAutoLogin(HttpServletRequest request) {
		// 从Cookie中获取自动登录的信息
		String rememberMe = WebUtil.getCookieValue(request, "rememberMe", true);
		// rememberMe为空，说明没有自动登录Cookie信息
		if (rememberMe == null) {
			return false;
		}
		// 使用base64进行解码
		rememberMe = new String(Base64.decodeBase64(rememberMe));
		// 按照;分号进行拆分，如果得不到登录名和MD5摘要的密码，则说明Cookie是伪造的
		String[] data = rememberMe.split(";");
		if (data.length != 2) {
			return false;
		}
		// 根据登录名查询管理员信息
		Admin admin = null;
		try {
			admin = adminMapper.selectByLoginName(data[0]);
		} catch (Exception e) {
			return false;
		}
		// 如果管理员对象为空，说明登录名是伪造的
		if (admin == null) {
			return false;
		}
		// (登录密码+登录名)进行MD5摘要，再与Cookie中存的值做对比
		String token = DigestUtils.md5Hex(admin.getLoginPwd() + admin.getLoginName());
		if (!token.equals(data[1])) {
			return false;
		}
		// 将本次自动登录的管理员保存到session中
		request.getSession().setAttribute("admin", admin);
		// 返回true说明自动登录成功
		return true;
	}

}
