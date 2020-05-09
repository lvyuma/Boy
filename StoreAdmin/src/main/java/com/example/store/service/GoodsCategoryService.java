package com.example.store.service;

import com.example.store.bean.GoodsCategory;
import com.example.store.common.PageObject;
import com.example.store.param.CategoryParam;

import java.util.List;

public interface GoodsCategoryService {

	PageObject getCategoryPageObject(CategoryParam categoryParam);

	List<GoodsCategory> getCategoryListByParentId(Integer parentId);

	void addCategory(GoodsCategory category);

	GoodsCategory getCategoryById(Integer id);

	void updateCategory(GoodsCategory category);

	void deleteCategory(Integer id);

}
