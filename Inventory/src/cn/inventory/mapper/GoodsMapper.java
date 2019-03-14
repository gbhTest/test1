package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Goods;

public interface GoodsMapper {

	
	/**
	 * 全部查询
	 * 根据商品名称(GoodsName)查询
	 * @param GoodsName
	 * @return
	 */
	public List<Goods> getGoodsName(@Param("GoodsName") String GoodsName);

	/**
	 * 添加数据(转载到订单进货页面)
	 * @param goods
	 * @return
	 */
	public int getGoodsAdd(Goods goods);
	
	/**
	 * 修改商品
	 * @param goods
	 * @return
	 */
	public int updateGoods(Goods goods);
	
	/**
	 * 根据id查询单个商品
	 * @param id
	 * @return
	 */
	public Goods gooGoods(@Param("id") Integer id);
}
