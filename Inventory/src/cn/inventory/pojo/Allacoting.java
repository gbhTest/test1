package cn.inventory.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Allacoting {
	private Integer id;//调货ID
	private String allocatingName;//调货负责人姓名
	private String allocatingPhone; //调货负责人电话
	private String calloutWarehouseName; //调出仓库负责人姓名
	private String foldWarehouseName;  //调入仓库负责人姓名
	private String calloutWarehouse;  //调出仓库名称
	private String foldWarehouse;//调入仓库名称
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date  calloutData;//调出时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date foldData;//调入时间
	private Stock stock;//库存表
	private Warehouse warehouse;//仓库表
	private OrderCargo orderCargo;//
	
	


	public Allacoting() {
		super();
	}

	public Allacoting(Integer id, String allocatingName,
			String allocatingPhone, String calloutWarehouseName,
			String foldWarehouseName, String calloutWarehouse,
			String foldWarehouse, Date calloutData, Date foldData, Stock stock,
			Warehouse warehouse, OrderCargo orderCargo) {
		super();
		this.id = id;
		this.allocatingName = allocatingName;
		this.allocatingPhone = allocatingPhone;
		this.calloutWarehouseName = calloutWarehouseName;
		this.foldWarehouseName = foldWarehouseName;
		this.calloutWarehouse = calloutWarehouse;
		this.foldWarehouse = foldWarehouse;
		this.calloutData = calloutData;
		this.foldData = foldData;
		this.stock = stock;
		this.warehouse = warehouse;
		this.orderCargo = orderCargo;
	}

	public OrderCargo getOrderCargo() {
		return orderCargo;
	}

	public void setOrderCargo(OrderCargo orderCargo) {
		this.orderCargo = orderCargo;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAllocatingName() {
		return allocatingName;
	}

	public void setAllocatingName(String allocatingName) {
		this.allocatingName = allocatingName;
	}

	public String getAllocatingPhone() {
		return allocatingPhone;
	}

	public void setAllocatingPhone(String allocatingPhone) {
		this.allocatingPhone = allocatingPhone;
	}

	public String getCalloutWarehouseName() {
		return calloutWarehouseName;
	}

	public void setCalloutWarehouseName(String calloutWarehouseName) {
		this.calloutWarehouseName = calloutWarehouseName;
	}

	public String getFoldWarehouseName() {
		return foldWarehouseName;
	}

	public void setFoldWarehouseName(String foldWarehouseName) {
		this.foldWarehouseName = foldWarehouseName;
	}

	public String getCalloutWarehouse() {
		return calloutWarehouse;
	}

	public void setCalloutWarehouse(String calloutWarehouse) {
		this.calloutWarehouse = calloutWarehouse;
	}

	public String getFoldWarehouse() {
		return foldWarehouse;
	}

	public void setFoldWarehouse(String foldWarehouse) {
		this.foldWarehouse = foldWarehouse;
	}

	public Date getCalloutData() {
		return calloutData;
	}

	public void setCalloutData(Date calloutData) {
		this.calloutData = calloutData;
	}

	public Date getFoldData() {
		return foldData;
	}

	public void setFoldData(Date foldData) {
		this.foldData = foldData;
	}

	public Stock getStock() {
		return stock;
	}

	public void setStock(Stock stock) {
		this.stock = stock;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}
	
	
	
}
