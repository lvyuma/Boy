package com.example.store.exception;

/**
 * 业务处理异常
 */
public class ServiceException extends RuntimeException {
	/**
	 * 错误代码
	 */
	private int code;

	public ServiceException(String message) {
		super(message);
	}

	public ServiceException(String message, int code) {
		super(message);
		this.code = code;
	}

	public int getCode() {
		return code;
	}

}
