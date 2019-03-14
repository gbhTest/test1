package cn.inventory.pojo;

import java.util.Date;

/**
 * 进货订单表
 * 
 * @author LH
 * 
 */
public class OrderCargo {
	private Integer id; // 进货订单id
	private String orderCargoCode; // 进货订单编号
	private Integer supplierId; // 供应商id
	private String orderCargoCategory; // 商品类别
	private String orderCargoName; // 商品名称
	private Integer orderCargoNumber; // 商品数量
	private String orderCargoUnit; // 商品单位
	private Integer orderCargoUnitPrice; // 商品单价
	private Integer orderCargoTotalPrice; // 商品总价
	private Integer userId; // 员工id
	private Date orderCargoDate; // 进货日期
	private Integer isOrderRefundCargo; // 是否为退货订单（1.是0.不是）
	private Integer isOrderCargoPayment;// 是否付款（1.是0.不是）
	private Supplier supplier;// 供应商表
	
	private String supplierName;//商人名称(新添加的数据)
	public OrderCargo() {
		super();
	}
	
	public OrderCargo(Integer id, String orderCargoCode, Integer supplierId,
			String orderCargoCategory, String orderCargoName,
			Integer orderCargoNumber, String orderCargoUnit,
			Integer orderCargoUnitPrice, Integer orderCargoTotalPrice,
			Integer userId, Date orderCargoDate, Integer isOrderRefundCargo,
			Integer isOrderCargoPayment, Supplier supplier, String supplierName) {
		super();
		this.id = id;
		this.orderCargoCode = orderCargoCode;
		this.supplierId = supplierId;
		this.orderCargoCategory = orderCargoCategory;
		this.orderCargoName = orderCargoName;
		this.orderCargoNumber = orderCargoNumber;
		this.orderCargoUnit = orderCargoUnit;
		this.orderCargoUnitPrice = orderCargoUnitPrice;
		this.orderCargoTotalPrice = orderCargoTotalPrice;
		this.userId = userId;
		this.orderCargoDate = orderCargoDate;
		this.isOrderRefundCargo = isOrderRefundCargo;
		this.isOrderCargoPayment = isOrderCargoPayment;
		this.supplier = supplier;
		this.supplierName = supplierName;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderCargoCode() {
		return orderCargoCode;
	}

	public void setOrderCargoCode(String orderCargoCode) {
		this.orderCargoCode = orderCargoCode;
	}

	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public String getOrderCargoCategory() {
		return orderCargoCategory;
	}

	public void setOrderCargoCategory(String orderCargoCategory) {
		this.orderCargoCategory = orderCargoCategory;
	}

	public String getOrderCargoName() {
		return orderCargoName;
	}

	public void setOrderCargoName(String orderCargoName) {
		this.orderCargoName = orderCargoName;
	}

	public Integer getOrderCargoNumber() {
		return orderCargoNumber;
	}

	public void setOrderCargoNumber(Integer orderCargoNumber) {
		this.orderCargoNumber = orderCargoNumber;
	}

	public String getOrderCargoUnit() {
		return orderCargoUnit;
	}

	public void setOrderCargoUnit(String orderCargoUnit) {
		this.orderCargoUnit = orderCargoUnit;
	}

	public Integer getOrderCargoUnitPrice() {
		return orderCargoUnitPrice;
	}

	public void setOrderCargoUnitPrice(Integer orderCargoUnitPrice) {
		this.orderCargoUnitPrice = orderCargoUnitPrice;
	}

	public Integer getOrderCargoTotalPrice() {
		return orderCargoTotalPrice;
	}

	public void setOrderCargoTotalPrice(Integer orderCargoTotalPrice) {
		this.orderCargoTotalPrice = orderCargoTotalPrice;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getOrderCargoDate() {
		return orderCargoDate;
	}

	public void setOrderCargoDate(Date orderCargoDate) {
		this.orderCargoDate = orderCargoDate;
	}

	public Integer getIsOrderRefundCargo() {
		return isOrderRefundCargo;
	}

	public void setIsOrderRefundCargo(Integer isOrderRefundCargo) {
		this.isOrderRefundCargo = isOrderRefundCargo;
	}

	public Integer getIsOrderCargoPayment() {
		return isOrderCargoPayment;
	}

	public void setIsOrderCargoPayment(Integer isOrderCargoPayment) {
		this.isOrderCargoPayment = isOrderCargoPayment;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	
}
