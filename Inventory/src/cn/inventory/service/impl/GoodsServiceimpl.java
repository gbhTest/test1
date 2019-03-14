package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.GoodsMapper;
import cn.inventory.pojo.Goods;
import cn.inventory.service.GoodsService;
@Service//业务实现注解
public class GoodsServiceimpl implements GoodsService{

	@Resource//映射注解
	private GoodsMapper goodsMapper;

	@Override
	public List<Goods> getGoodsName(String GoodsName) {
		return goodsMapper.getGoodsName(GoodsName);
	}

	@Override
	public int getGoodsAdd(Goods goods) {
		return goodsMapper.getGoodsAdd(goods);
	}

	@Override
	public int updateGoods(Goods goods) {
		return goodsMapper.updateGoods(goods);
	}

	@Override
	public Goods gooGoods(Integer id) {
		return goodsMapper.gooGoods(id);
	}
}
