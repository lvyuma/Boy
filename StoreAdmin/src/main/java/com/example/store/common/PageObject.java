package com.example.store.common;

import java.io.Serializable;

/**
 * 分页对象
 */
public class PageObject implements Serializable {

	// 总记录数
	private int total;
	// 记录列表
	private Object rows;

	public PageObject() {
	}

	public PageObject(int total, Object rows) {
		this.total = total;
		this.rows = rows;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "PageObject{" +
				"total=" + total +
				", rows=" + rows +
				'}';
	}
}
