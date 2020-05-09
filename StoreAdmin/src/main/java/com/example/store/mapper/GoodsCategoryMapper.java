package com.example.store.mapper;

import com.example.store.bean.GoodsCategory;
import com.example.store.param.CategoryParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsCategoryMapper {

	List<GoodsCategory> selectCategoryList(CategoryParam categoryParam);

	int selectCategoryCount(CategoryParam categoryParam);

	List<GoodsCategory> selectCategoryListByParentId(@Param("parentId") Integer parentId);

	int insertCategory(GoodsCategory category);

	GoodsCategory selectCategoryById(Integer id);

	void updateCategory(GoodsCategory category);

	void deleteCategory(Integer id);
	
}
