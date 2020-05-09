package com.example.store.controller;

import com.example.store.bean.Goods;
import com.example.store.common.JsonResult;
import com.example.store.common.PageObject;
import com.example.store.exception.ServiceException;
import com.example.store.param.GoodsParam;
import com.example.store.service.GoodsService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
@RequestMapping("/admin/goods")
public class GoodsController {

	@Resource
	private GoodsService goodsService;

	// 转发到商品列表页面
	@RequestMapping("/showGoodsList.do")
	public String showGoodsList() {
		return "goodsList";
	}

	// 转发到热卖商品列表页面
	// /admin/goods/HotGoodsList.do
	@RequestMapping("/showHotGoodsList.do")
	public String showHotGoodsList() {
		return "hotGoodsList";
	}

	@RequestMapping("/showWelcomGoodsList.do")
	public String showWelcomHotGoodsList() {
		return "showWelcomGoodsList";
	}

	// 转发到商品表单页面
	@RequestMapping("/showGoodsForm.do")
	public String showGoodsForm(Integer id, Model model) {
		Goods goods = null;
		if (id != null) {
			goods = goodsService.getGoodsById(id);
		} else {
			goods = new Goods();
		}
		model.addAttribute("goods", goods);
		return "goodsForm";
	}

	@RequestMapping("/getGoodsPageObject.do")
	@ResponseBody
	public JsonResult getGoodsPageObject(GoodsParam goodsParam) {
		PageObject pageObject = goodsService.getGoodsPageObject(goodsParam);
		return new JsonResult<>(1, "OK", pageObject);
	}

	@RequestMapping("/getHotGoodsPageObject.do")
	@ResponseBody
	public JsonResult getHotGoodsPageObject(GoodsParam goodsParam) {
		PageObject pageObject = goodsService.getHotGoodsPageObject(goodsParam);

		return new JsonResult<>(10, "OK", pageObject);
	}

	@RequestMapping("/getWelcomGoodsPageObject.do")
	@ResponseBody
	public JsonResult getWelcomGoodsPageObject(GoodsParam goodsParam) {
		PageObject pageObject = goodsService.getWelcomGoodsPageObject(goodsParam);

		return new JsonResult<>(10, "OK", pageObject);
	}



	@RequestMapping("/addGoods.do")
	@ResponseBody
	public JsonResult addGoods(Goods goods) {
		goodsService.addGoods(goods);
		return new JsonResult<>(1, "添加商品成功！");
	}

	@RequestMapping("/updateGoods.do")
	@ResponseBody
	public JsonResult updateGoods(Goods goods) {
		goodsService.updateGoods(goods);
		return new JsonResult<>(1, "修改商品成功！");
	}

	@RequestMapping("/deleteGoods.do")
	@ResponseBody
	public JsonResult deleteGoods(Integer id) {
		goodsService.deleteGoods(id);
		return new JsonResult<>(1, "删除商品成功！");
	}

	@RequestMapping("/enabledGoods.do")
	@ResponseBody
	public JsonResult enabledGoods(Integer id) {
		goodsService.enabledGoods(id);
		return new JsonResult<>(1, "上架商品成功！");
	}

	@RequestMapping("/disabledGoods.do")
	@ResponseBody
	public JsonResult disabledGoods(Integer id) {
		goodsService.disabledGoods(id);
		return new JsonResult<>(1, "下架商品成功！");
	}

	// 上传头像
	@RequestMapping("/uploadImage.do")
	@ResponseBody
	public JsonResult uploadImage(@RequestParam("image") MultipartFile image, String imagePath, HttpServletRequest request) {
		try {
			String realPath = request.getServletContext().getRealPath("/");
			String path = handleUploadImage(image, realPath, "goods");
			// 删除上次上传的图片(若有)
			if (imagePath != null) {
				File file = new File(realPath + imagePath);
				if (file.exists()) {
					file.delete();
				}
			}
			return new JsonResult<>(1, "上传图片成功！", path);
		} catch (ServiceException e) {
			return new JsonResult(0, e.getMessage());
		}
	}

	private String handleUploadImage(MultipartFile image, String realPath, String moduleName) {
		if (image.isEmpty()) {
			throw new ServiceException("没有选择上传的图片！");
		}
		// 依据原始文件名生成新文件名
		String prefix = UUID.randomUUID().toString().toLowerCase();
		String fileName = prefix + "." + FilenameUtils.getExtension(image.getOriginalFilename());
		// 依据upload+当前日期作为保存路径
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String savePath = "/upload/" + moduleName + "/" + sdf.format(new Date()) + "/" + fileName;
		File saveFile = new File(realPath + savePath);
		try {
			if (!saveFile.exists()) {
				saveFile.mkdirs();
			}
			// 保存上传的图片
			image.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
			if (saveFile.exists())
				saveFile.delete();
			throw new ServiceException("上传图片失败！");
		}
		return savePath;
	}

}
