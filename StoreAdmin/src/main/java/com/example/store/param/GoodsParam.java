package com.example.store.param;

/**
 * 商品查询参数类
 */
public class GoodsParam extends BaseParam {

	// 分类id
	private Integer categoryId;
	// 商品标题
	private String title;
	// 商品状态
	private Integer status;

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
