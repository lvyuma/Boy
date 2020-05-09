package com.example.store.controller;

import com.example.store.bean.GoodsCategory;
import com.example.store.common.JsonResult;
import com.example.store.param.CategoryParam;
import com.example.store.service.GoodsCategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/admin/category")
public class GoodsCategoryController {

	@Resource
	private GoodsCategoryService goodsCategoryService;

	// 转发到分类列表页面
	@RequestMapping("/showCategoryList.do")
	public String showCategoryList() {
		return "categoryList";
	}

	// 转发到分类表单页面
	@RequestMapping("/showCategoryForm.do")
	public String showCategoryForm(Integer id, Model model) {
		GoodsCategory category = null;
		if (id != null) {
			category = goodsCategoryService.getCategoryById(id);
		} else {
			category = new GoodsCategory();
		}
		//1.往前台传数据，可以传对象，可以传List，通过el表达式 ${}可以获取到，
		//类似于request.setAttribute("sts",sts)效果一样。
		model.addAttribute("category", category);
		return "categoryForm";
	}

	// 转发到分类树页面
	@RequestMapping("/showCategoryTree.do")
	public String showCategoryTree() {
		return "categoryTree";
	}

	@RequestMapping("/getCategoryPageObject.do")
	@ResponseBody
	public JsonResult getCategoryPageObject(CategoryParam categoryParam) {
		return new JsonResult<>(1, "OK", goodsCategoryService.getCategoryPageObject(categoryParam));
	}

	@RequestMapping("/getCategoryListByParentId.do")
	@ResponseBody
	public JsonResult getCategoryListByParentId(Integer parentId) {
		return new JsonResult<>(1, "OK", goodsCategoryService.getCategoryListByParentId(parentId));
	}

	@RequestMapping("/addCategory.do")
	@ResponseBody
	public JsonResult addCategory(GoodsCategory category) {
		goodsCategoryService.addCategory(category);
		return new JsonResult<>(1, "添加商品分类成功！");
	}

	@RequestMapping("/updateCategory.do")
	@ResponseBody
	public JsonResult updateCategory(GoodsCategory category) {
		goodsCategoryService.updateCategory(category);
		return new JsonResult<>(1, "修改商品分类成功！");
	}

	@RequestMapping("/deleteCategory.do")
	@ResponseBody
	public JsonResult deleteCategory(Integer id) {
		goodsCategoryService.deleteCategory(id);
		return new JsonResult<>(1, "删除商品分类成功！");
	}

}
