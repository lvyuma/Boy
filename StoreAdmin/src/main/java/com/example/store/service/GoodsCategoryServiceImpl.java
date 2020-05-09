package com.example.store.service;

import com.example.store.bean.GoodsCategory;
import com.example.store.common.PageObject;
import com.example.store.exception.ServiceException;
import com.example.store.mapper.GoodsCategoryMapper;
import com.example.store.param.CategoryParam;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class GoodsCategoryServiceImpl implements GoodsCategoryService {

	@Resource
	private GoodsCategoryMapper goodsCategoryMapper;

	@Override
	public PageObject getCategoryPageObject(CategoryParam categoryParam) {
		List<GoodsCategory> rows = goodsCategoryMapper.selectCategoryList(categoryParam);
		int total = goodsCategoryMapper.selectCategoryCount(categoryParam);
		return new PageObject(total, rows);
	}

	@Override
	public List<GoodsCategory> getCategoryListByParentId(Integer parentId) {
		return goodsCategoryMapper.selectCategoryListByParentId(parentId);
	}

	@Override
	public void addCategory(GoodsCategory category) {
		// TODO
		category.setCreatedTime(new Date());
		goodsCategoryMapper.insertCategory(category);
	}

	@Override
	public GoodsCategory getCategoryById(Integer id) {
		return goodsCategoryMapper.selectCategoryById(id);
	}

	@Override
	public void updateCategory(GoodsCategory category) {
		// TODO
		category.setModifiedTime(new Date());
		goodsCategoryMapper.updateCategory(category);
	}

	@Override
	public void deleteCategory(Integer id) {
		List<GoodsCategory> list = goodsCategoryMapper.selectCategoryListByParentId(id);
		if (list != null && list.size() > 0) {
			throw new ServiceException("该分类中还有子分类，不能被删除！");
		}
		goodsCategoryMapper.deleteCategory(id);
	}

}
