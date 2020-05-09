package com.example.store.param;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 订单查询参数类
 */
public class OrderParam extends BaseParam {

	// 订单号
	private Integer id;
	// 订单状态
	private Integer status;
	// 开始日期
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date beginDate;
	// 结束日期
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

}
