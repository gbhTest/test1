package cn.inventory.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.CustomerOrderMapper;
import cn.inventory.pojo.CustomerOrder;
import cn.inventory.service.CustomerOrderService;

/**
 * 业务实现 OrderCargoServiceImpl
 * 
 * @author OrderCargoServiceImpl
 * 
 */
@Service
// 业务实现注解
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Resource
	// 映射注解
	private CustomerOrderMapper customerOrderMapper;

	@Override
	public List<CustomerOrder> getLogin(String clientName,
			Integer isCustomerOrderPrice) {
		return customerOrderMapper.getLogin(clientName, isCustomerOrderPrice);
	}

	//从此处修改
	/**
	 * 客户往来账查询
	 */
	@Override
	public List<CustomerOrder> getCusttomerOrderList(Integer isOrderCargoPayment) {
		return customerOrderMapper.getCusttomerOrderList(isOrderCargoPayment);
	}

	@Override
	public int getCusttomerOrderCount(Integer isOrderCargoPayment) {
		// TODO Auto-generated method stub
		return customerOrderMapper.getCusttomerOrderCount(isOrderCargoPayment);
	}

	@Override
	public double getSum() {
		// TODO Auto-generated method stub
		return customerOrderMapper.getSum();
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return customerOrderMapper.getCount();
	}
	
	@Override
	public List<Map<String, Integer>> queryAllByDate(Date start, Date end) {
		List<Map<String, Integer>> list = new ArrayList<Map<String, Integer>>();
		list = customerOrderMapper.queryAllByDate(start, end);
		return list;
	}

	@Override
	public List<CustomerOrder> getCustomerOrder() {
		return customerOrderMapper.getCustomerOrder();
	}
}
