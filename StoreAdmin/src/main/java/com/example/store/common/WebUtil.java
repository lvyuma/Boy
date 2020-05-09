package com.example.store.common;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * Web常用工具类
 */
public class WebUtil {

	/**
	 * 尝试获取当前请求的HttpServletRequest实例
	 *
	 * @return {@link HttpServletRequest}
	 */
	public static HttpServletRequest getRequest() {
		try {
			return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 获取当前HttpSession实例
	 *
	 * @return {@link HttpSession}
	 */
	public static HttpSession getSession() {
		HttpServletRequest request = getRequest();
		if (request != null) {
			return request.getSession();
		}
		return null;
	}

	/**
	 * 获取请求客户端的真实ip地址
	 *
	 * @param request 请求对象
	 * @return ip地址
	 * https://www.iteye.com/blog/momodog-295946
	 */
	//在JSP里，获取客户端的IP地址的方法是：request.getRemoteAddr()

	public static String getIpAddr(HttpServletRequest request) {
		//取代理Ip地址
		String ip = request.getHeader(" x-forwarded-for ");
		//取nginx代理设置的ip地址
		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getHeader("X-Real-IP");
		}
		//从网上取得
		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getHeader(" Proxy-Client-IP ");
		}

		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getHeader(" WL-Proxy-Client-IP ");
		}


		if (ip == null || ip.length() == 0 || " unknown ".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	 * 获取web应用绝对路径
	 *
	 * @param request 请求对象
	 * @return 绝对路径
	 */
	public static String getBasePath(HttpServletRequest request) {
		return request.getScheme() + "://" +
				request.getServerName() + ":" + request.getServerPort() +
				request.getContextPath() + "/";
	}

	/**
	 * 根据Cookie的名称获取对应的Cookie实例
	 *
	 * @param request 请求对象
	 * @param name    Cookie的名称
	 * @return {@link Cookie}
	 */
	public static Cookie getCookie(HttpServletRequest request, String name) {
		Cookie[] cookies = request.getCookies();
		if (cookies == null || name == null) {
			return null;
		}
		Cookie cookie = null;
		for (Cookie c : cookies) {
			if (c.getName().equals(name)) {
				cookie = c;
				break;
			}
		}
		return cookie;
	}

	/**
	 * 根据Cookie的名称获取对应的Cookie的值
	 *
	 * @param request  请求对象
	 * @param name     Cookie的名称
	 * @param isDecode 是否URL解码
	 * @return Cookie的值
	 */
	public static String getCookieValue(HttpServletRequest request, String name, boolean isDecode) {
		Cookie cookie = getCookie(request, name);
		if (cookie == null) {
			return null;
		}
		String value = cookie.getValue();
		if (value != null && isDecode) {
			try {
				value = URLDecoder.decode(value, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return value;
	}

	/**
	 * 根据Cookie的名称获取对应Cookie的值
	 *
	 * @param request 请求对象
	 * @param name    Cookie的名称
	 * @return Cookie的值
	 */
	public static String getCookieValue(HttpServletRequest request, String name) {
		return getCookieValue(request, name, false);
	}

	/**
	 * 设置cookie
	 *
	 * @param response 响应对象
	 * @param name     Cookie的名称
	 * @param value    Cookie的值
	 * @param maxAge   过期时间（单位：秒）
	 * @param isEncode 是否URL编码
	 */
	public static void setCookie(HttpServletResponse response, String name, String value, int maxAge, boolean isEncode) {
		if (name == null) {
			return;
		}
		if (value == null) {
			value = "";
		} else if (isEncode) {
			try {
				value = URLEncoder.encode(value, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(maxAge);
		cookie.setPath("/");
		response.addCookie(cookie);
	}

	/**
	 * 设置cookie
	 *
	 * @param response 响应对象
	 * @param name     Cookie的名称
	 * @param value    Cookie的值
	 * @param maxAge   过期时间（单位：秒）
	 */
	public static void setCookie(HttpServletResponse response, String name, String value, int maxAge) {
		setCookie(response, name, value, maxAge, false);
	}

}
