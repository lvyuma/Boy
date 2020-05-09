package com.example.store.mapper;

import com.example.store.bean.Goods;
import com.example.store.param.GoodsParam;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsMapper {

	List<Goods> selectGoodsList(GoodsParam goodsParam);

	List<Goods> selectHotGoodsList(GoodsParam goodsParam);

	List<Goods> selectWelcomGoodsList(GoodsParam goodsParam);

	int selectGoodsCount(GoodsParam goodsParam);

	Goods selectGoodsById(Integer id);

	void insertGoods(Goods goods);

	void updateGoods(Goods goods);

	void deleteGoods(Integer id);

	void updateStatusById(@Param("id") Integer id, @Param("status") Integer status);


}
