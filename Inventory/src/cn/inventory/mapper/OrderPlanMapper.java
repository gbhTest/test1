package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.OrderPlan;
import cn.inventory.pojo.Supplier;

/**
 * 订单计划表
 * @author 闫佣强
 *
 */
public interface OrderPlanMapper {

	/**
	 * yyq 增加
	 * @param orderPlan
	 * @return
	 */
	public int insertOrder(OrderPlan orderPlan);
	
	/**
	 * yyq 删除
	 * 根据id删除
	 * @param id
	 * @return
	 */
	public int deleteOrder(Integer id);
	
	/**
	 * 修改
	 * @return
	 */
	public int updateOrder(OrderPlan orderPlan);
	
	/**
	 * 审核订单
	 * @param isOrderPlanApproval
	 * @return
	 */
	public int updateIs(@Param("id")Integer id);
	
	/**
	 * 查询全部商品
	 * 根据订单是否批准查询
	 * @param name
	 * @return
	 */
	public List<OrderPlan> selectOrder(@Param("isOrderPlanApproval")String isOrderPlanApproval);
	
	/**
	 * 根据id查询单个商品
	 * @param id
	 * @return
	 */
	public OrderPlan getOrderPlans(@Param("id")Integer id);
	
	/**
	 * 查询供应商
	 */
	public List<Supplier> getSupplier();
	
	/**
	 * 采购订单计划与商品表联合查询
	 */
	public OrderPlan getOrderPlan(@Param("id")Integer id);
}
