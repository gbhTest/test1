package cn.inventory.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.OrderPlan;
import cn.inventory.pojo.Supplier;

public interface OrderPlanService {
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
	 * 根据是否审批订单查询
	 * @param name
	 * @return
	 */
	public List<OrderPlan> selectOrder(String isOrderPlanApproval);
	
	/**
	 * 根据id查询单个订单
	 * @param id
	 * @return
	 */
	public OrderPlan getOrderPlans(Integer id);
	
	/**
	 * 查询供应商
	 */
	public List<Supplier> getSupplier();
	
	/**
	 * 采购订单计划与商品表联合查询
	 */
	public OrderPlan getOrderPlan(@Param("id")Integer id);
}
