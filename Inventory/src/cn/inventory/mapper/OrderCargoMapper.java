package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;



import cn.inventory.pojo.OrderCargo;

/**
 * 映射层
 * @author OrderCargoMapper
 *
 */
public interface OrderCargoMapper {
	/**
	 * 入库退货先给进货订单改为退货订单
	 * @param IsOrderRefundCargo
	 * @return
	 */
	public int getModification(@Param("id") Integer id,@Param("IsOrderRefundCargo")Integer IsOrderRefundCargo);
	/**
	 * 入库结账
	 * @param IsOrderCargoPayment
	 * @return
	 */
	public int getPayment(@Param("id")Integer ID,@Param("IsOrderCargoPayment")Integer IsOrderCargoPayment);
	
	/**
	 * 入库退货结账
	 * @param IsOrderRefundCargo
	 * @return
	 */
	public int getReturns(@Param("id")Integer ID,@Param("IsOrderRefundCargo")Integer IsOrderRefundCargo);
	/**
	 * yyq
	 * 供应商来往账全部查询 
	 * 根据供应商名
	 * @param name
	 * @return
	 */
	public List<OrderCargo> selectOrder(String name);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public List<OrderCargo> getOrder(Integer id);
	
	//修改内容

	/**
	 * 供应商往来账-通过查询条件获取供应商往来账列表
	 * @param orderCargoName 商品名称
	 * @param isOrderCargoPayment 是否付款
	 * @return
	 */
	public  List<OrderCargo> getSupplierList(@Param("orderCargoName")String orderCargoName,
											 @Param("isOrderCargoPayment")Integer isOrderCargoPayment);
	/**
	 * 供应商往来账-通过条件查询供应商往来账记录数
	 * @param orderCargoName 商品名称
	 * @param isOrderCargoPayment 是否付款
	 * @return
	 */
	public int getSupplierCount(@Param("orderCargoName")String orderCargoName,
			 				    @Param("isOrderCargoPayment")Integer isOrderCargoPayment);
	/**
	 * 成交总金额
	 * @return
	 */
	public double getSum();
	/**
	 * 成功成交的订单数量
	 * @return
	 */
	public int getCount();
	
	/**
	 * 添加采购订单
	 * @param orderCargo
	 * @return
	 */
	public int addOrderCargo(OrderCargo orderCargo);
	/**
	 * 去付款
	 * @param id
	 * @return
	 */
	public int payFor(@Param("id")Integer id);
}
