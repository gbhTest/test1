package cn.inventory.pojo;

import java.util.Date;
/**
 * 订单计划表
 * @author LH
 *
 */
public class OrderPlan {
	private Integer id; // 订单计划
	private String orderPlanName;// 订单商品名称
	private Integer orderPlanNumber; // 商品数量
	private String orderPlanUnit; // 商品单位
	private Integer supplierId; // 供应商id
	private Date orderPlanDate; // 计划日期
	private Integer isOrderPlanApproval;// 是否批准（1.是0.不是）
	private Integer goodsPrice;//商品单价

	private Supplier supplier;//与supplier类的交互

	private String supplierGroup;//供应商名

	

	

	public OrderPlan(Integer id, String orderPlanName, Integer orderPlanNumber,
			String orderPlanUnit, Integer supplierId, Date orderPlanDate,
			Integer isOrderPlanApproval, Integer goodsPrice,
			Supplier supplier, String supplierGroup) {
		super();
		this.id = id;
		this.orderPlanName = orderPlanName;
		this.orderPlanNumber = orderPlanNumber;
		this.orderPlanUnit = orderPlanUnit;
		this.supplierId = supplierId;
		this.orderPlanDate = orderPlanDate;
		this.isOrderPlanApproval = isOrderPlanApproval;
		this.goodsPrice = goodsPrice;
		this.supplier = supplier;
		this.supplierGroup = supplierGroup;
	}

	public OrderPlan() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderPlanName() {
		return orderPlanName;
	}

	public void setOrderPlanName(String orderPlanName) {
		this.orderPlanName = orderPlanName;
	}

	public Integer getOrderPlanNumber() {
		return orderPlanNumber;
	}

	public void setOrderPlanNumber(Integer orderPlanNumber) {
		this.orderPlanNumber = orderPlanNumber;
	}

	public String getOrderPlanUnit() {
		return orderPlanUnit;
	}

	public void setOrderPlanUnit(String orderPlanUnit) {
		this.orderPlanUnit = orderPlanUnit;
	}

	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public Date getOrderPlanDate() {
		return orderPlanDate;
	}

	public void setOrderPlanDate(Date orderPlanDate) {
		this.orderPlanDate = orderPlanDate;
	}

	public Integer getIsOrderPlanApproval() {
		return isOrderPlanApproval;
	}

	public void setIsOrderPlanApproval(Integer isOrderPlanApproval) {
		this.isOrderPlanApproval = isOrderPlanApproval;
	}

	public Integer getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getSupplierGroup() {
		return supplierGroup;
	}

	public void setSupplierGroup(String supplierGroup) {
		this.supplierGroup = supplierGroup;
	}

	
	

}
