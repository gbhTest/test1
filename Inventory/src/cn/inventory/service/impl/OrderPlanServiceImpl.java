package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.OrderPlanMapper;
import cn.inventory.pojo.OrderPlan;
import cn.inventory.pojo.Supplier;
import cn.inventory.service.OrderPlanService;
@Service
public class OrderPlanServiceImpl implements OrderPlanService {

	@Resource
	private OrderPlanMapper orderPlanMapper;
	
	public int insertOrder(OrderPlan orderPlan) {
		return orderPlanMapper.insertOrder(orderPlan);
	}

	public int deleteOrder(Integer id) {
		return orderPlanMapper.deleteOrder(id);
	}

	public int updateOrder(OrderPlan orderPlan) {
		return orderPlanMapper.updateOrder(orderPlan);
	}

	public List<OrderPlan> selectOrder(String isOrderPlanApproval) {
		return orderPlanMapper.selectOrder(isOrderPlanApproval);
	}

	@Override
	public OrderPlan getOrderPlans(Integer id) {
		return orderPlanMapper.getOrderPlans(id); 
	}

	@Override
	public List<Supplier> getSupplier() {
		// TODO Auto-generated method stub
		return orderPlanMapper.getSupplier();
	}

	@Override
	public int updateIs(Integer id) {
		// TODO Auto-generated method stub
		return orderPlanMapper.updateIs(id);
	}

	@Override
	public OrderPlan getOrderPlan(Integer id) {
		// TODO Auto-generated method stub
		return orderPlanMapper.getOrderPlan(id);
	}
	


}
