package com.example.store.service;

import com.example.store.bean.Goods;
import com.example.store.common.PageObject;
import com.example.store.param.GoodsParam;

public interface GoodsService {

	PageObject getGoodsPageObject(GoodsParam goodsParam);

	PageObject getHotGoodsPageObject(GoodsParam goodsParam);

	PageObject getWelcomGoodsPageObject(GoodsParam goodsParam);

	Goods getGoodsById(Integer id);

	void addGoods(Goods goods);

	void updateGoods(Goods goods);

	void deleteGoods(Integer id);

	void enabledGoods(Integer id);

	void disabledGoods(Integer id);


}
