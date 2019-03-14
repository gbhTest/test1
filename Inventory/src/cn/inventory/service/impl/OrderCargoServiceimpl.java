package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.OrderCargoMapper;
import cn.inventory.pojo.OrderCargo;
import cn.inventory.service.OrderCargoService;
@Service//业务实现注解
public class OrderCargoServiceimpl implements OrderCargoService {

	@Resource//映射注解
	private OrderCargoMapper orderCargoMapper;
	
	public int getModification(Integer id,Integer IsOrderRefundCargo) {
		return orderCargoMapper.getModification(id,IsOrderRefundCargo);
	}
	
	public int getPayment(Integer ID, Integer IsOrderCargoPayment) {
		return orderCargoMapper.getPayment(ID, IsOrderCargoPayment);
	}
	
	public int getReturns(Integer ID, Integer IsOrderRefundCargo) {
		return orderCargoMapper.getReturns(ID, IsOrderRefundCargo);
	}
	
	public List<OrderCargo> selectOrder(String name) {
		return orderCargoMapper.selectOrder(name);
	}

	@Override
	public List<OrderCargo> getOrder(Integer id) {
		return orderCargoMapper.getOrder(id);
	}
	//从此处修改
	//显示供应商往来账
	@Override
	public List<OrderCargo> getSupplierList(String orderCargoName,
			Integer isOrderCargoPayment) {
		return orderCargoMapper.getSupplierList(orderCargoName, isOrderCargoPayment);
	}

	@Override
	public int getSupplierCount(String orderCargoName,
			Integer isOrderCargoPayment) {
		// TODO Auto-generated method stub
		return orderCargoMapper.getSupplierCount(orderCargoName, isOrderCargoPayment);
	}

	@Override
	public double getSum() {
		// TODO Auto-generated method stub
		return orderCargoMapper.getSum();
	}

	@Override
	public int getCount() {
		return orderCargoMapper.getCount();
	}

	@Override
	public int addOrderCargo(OrderCargo orderCargo) {
		return orderCargoMapper.addOrderCargo(orderCargo);
	}

	@Override
	public int payFor(Integer id) {
		return orderCargoMapper.payFor(id);
	}
	
}
