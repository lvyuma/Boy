package com.example.store.service;

import com.example.store.bean.Goods;
import com.example.store.common.PageObject;
import com.example.store.mapper.GoodsMapper;
import com.example.store.param.GoodsParam;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.swing.text.html.parser.Entity;
import java.util.Date;
import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsMapper goodsMapper;

	@Override
	public PageObject getGoodsPageObject(GoodsParam goodsParam) {
		List<Goods> rows = goodsMapper.selectGoodsList(goodsParam);
		int total = goodsMapper.selectGoodsCount(goodsParam);
		return new PageObject(total, rows);
	}

	@Override
	public PageObject getHotGoodsPageObject(GoodsParam goodsParam) {
		List<Goods> rows = goodsMapper.selectHotGoodsList(goodsParam);
		int total = goodsMapper.selectGoodsCount(goodsParam);
		return new PageObject(total, rows);
	}

	@Override
	public PageObject getWelcomGoodsPageObject(GoodsParam goodsParam) {
		List<Goods> rows = goodsMapper.selectWelcomGoodsList(goodsParam);
		int total = goodsMapper.selectGoodsCount(goodsParam);
		return new PageObject(5,rows);
	}


	@Override
	public Goods getGoodsById(Integer id) {
		return goodsMapper.selectGoodsById(id);
	}

	@Override
	public void addGoods(Goods goods) {
		// TODO
		goods.setCreatedTime(new Date());
		goodsMapper.insertGoods(goods);
	}

	@Override
	public void updateGoods(Goods goods) {
		// TODO
		goods.setModifiedTime(new Date());
		goodsMapper.updateGoods(goods);
	}

	@Override
	public void deleteGoods(Integer id) {
		goodsMapper.deleteGoods(id);
	}

	@Override
	public void enabledGoods(Integer id) {
		goodsMapper.updateStatusById(id, 1);
	}

	@Override
	public void disabledGoods(Integer id) {
		goodsMapper.updateStatusById(id, 0);
	}

}
