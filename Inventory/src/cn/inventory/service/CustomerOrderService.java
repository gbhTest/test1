package cn.inventory.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.CustomerOrder;
/**
 * 业务层 service
 * @author OrderCargoService
 *
 */
public interface CustomerOrderService {

	/**
	 * 销售查询 销售退货查询
	 * 
	 * @param CustomerOrderCode订单编号
	 * @param ClientName客户姓名
	 * @return
	 */
	public List<CustomerOrder> getLogin(
			@Param("clientName") String clientName,
			@Param("isCustomerOrderPrice") Integer isCustomerOrderPrice);

	//从此处开始修改
	/**
	 * 客户往来账查询-通过条件查询获取信息列表
	 * @param isOrderCargoPayment 是否付款
	 * @return
	 */

	public  List<CustomerOrder> getCusttomerOrderList(Integer isOrderCargoPayment);
	/**
	 * 客户往来账-通过条件查询
	 * @param isOrderCargoPayment 是否付款
	 * @return
	 */
	public int getCusttomerOrderCount(Integer isOrderCargoPayment);
	/**
	 * 成交金额
	 * @return
	 */
	public double getSum();
	/**
	 * 成功成交订单数量
	 * @return
	 */
	public int getCount();

	/**
	 *曲线图方法 
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Map<String, Integer>> queryAllByDate(@Param("start")Date start,@Param("end")Date end);
	
	/**
	 * 查询销售总量
	 * @return
	 */
	public List<CustomerOrder> getCustomerOrder();
}
