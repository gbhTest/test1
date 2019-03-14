package cn.inventory.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Stock;

public interface StockService {
	/**
	 * 销售订单完成后 修改库存量
	 * 
	 * @param StockNumber
	 * @return
	 */
	public int getModification(@Param("StockNumber") Integer StockNumber,@Param("id")Integer id);

	/**
	 * 入库登记
	 * 
	 * @param stock
	 * @return
	 */
	public int getRegister(Stock stock);

	/**
	 * 入库退货 删除库存记录
	 * 
	 * @param OrderCargoID
	 * @return
	 */
	public int getCancel(@Param("OrderCargoID") Integer OrderCargoID);

	/**
	 * 入库查询 入库退货查询
	 * 
	 * @param IsOrderRefundCargo 根据是否退货订单查询
	 * @param StockNumber	库存量查询
	 * @param StockDate	入库日期查询
	 * @return
	 */
	public List<Stock> getQuery(
			@Param("IsOrderRefundCargo") Integer IsOrderRefundCargo,
			@Param("StockNumber") Integer StockNumber,
			@Param("StockDate") String StockDate);
	
	/**
	 * 库存盘点与库存查询
	 * @param OrderCargoID 根据订单id查询
	 * @param OrderCargoName 根据订单商品名称
	 * @return
	 */
	public List<Stock> getStockList(
			@Param("OrderCargoID") Integer OrderCargoID,
			@Param("OrderCargoName") String OrderCargoName);
	/**
	 * 根据orderCargo表的id 判断stock中是否存在相同的
	 * @param id
	 * @return
	 */
	public Stock getStockByOrderCargoId(@Param("id")Integer id);
	
	/**
	 * 更新进货订单表中的是否为退货订单字段
	 * @param id
	 * @return
	 */
	public int updateIsRefund(@Param("OrderCargoID")Integer OrderCargoID);
	
	/**
	 * 获取库存量低于1000(预警)
	 * @return
	 */
	public int getStockNumberCount();
	
	/**
	 * 获取预警相关商品的信息
	 * @return
	 */
	public List<Stock> getStockCount();
	
}
