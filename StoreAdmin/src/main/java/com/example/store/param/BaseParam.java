package com.example.store.param;

/**
 * 基础参数类
 */
public class BaseParam {

	// 分页查询的起始位置
	private Integer offset;

	// 分页查询的条目数
	private Integer limit;

	public Integer getOffset() {
		if (offset == null || offset < 0) {
			offset = 0;
		}
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	public Integer getLimit() {
		if (limit == null || limit < 1) {
			limit = 10;
		}
		return limit;
	}

	public void setLimit(Integer limit) {
		this.limit = limit;
	}

}
