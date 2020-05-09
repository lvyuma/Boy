package com.example.store.common;

/**
 * JSON结果对象，用于响应JSON数据到前端
 */
public class JsonResult<T> {

	private int state;
	private String message;
	private T data;

	public JsonResult() {
	}

	public JsonResult(int state, String message) {
		this.state = state;
		this.message = message;
	}

	public JsonResult(int state, String message, T data) {
		this.state = state;
		this.message = message;
		this.data = data;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "JsonResult{" +
				"state=" + state +
				", message='" + message + '\'' +
				", data=" + data +
				'}';
	}
}
