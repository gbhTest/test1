package cn.inventory.pojo;

import java.util.Date;

import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 库存表
 * @author LH
 *
 */
public class Stock {
	private Integer id; // 库存id
	private Integer stockNumber; // 库存量
	private Integer warehouseId; // 仓库id
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Pattern(regexp = "yyyy-MM-dd")
	private Date stockDate;// 入库日期
	private OrderCargo orderCargo;//进货订单表
	private Integer orderCargoID;// 进货订单id
	
	private String orderCargoName;//商品名称
	private String warehouseAppellative;//仓库名称
	
	
	public Stock(Integer id, Integer stockNumber, Integer warehouseId,
			Date stockDate, OrderCargo orderCargo, Integer orderCargoID,
			String orderCargoName, String warehouseAppellative) {
		super();
		this.id = id;
		this.stockNumber = stockNumber;
		this.warehouseId = warehouseId;
		this.stockDate = stockDate;
		this.orderCargo = orderCargo;
		this.orderCargoID = orderCargoID;
		this.orderCargoName = orderCargoName;
		this.warehouseAppellative = warehouseAppellative;
	}
	public Stock() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getStockNumber() {
		return stockNumber;
	}
	public void setStockNumber(Integer stockNumber) {
		this.stockNumber = stockNumber;
	}
	public Integer getWarehouseId() {
		return warehouseId;
	}
	public void setWarehouseId(Integer warehouseId) {
		this.warehouseId = warehouseId;
	}
	public Date getStockDate() {
		return stockDate;
	}
	public void setStockDate(Date stockDate) {
		this.stockDate = stockDate;
	}
	public OrderCargo getOrderCargo() {
		return orderCargo;
	}
	public void setOrderCargo(OrderCargo orderCargo) {
		this.orderCargo = orderCargo;
	}
	public Integer getOrderCargoID() {
		return orderCargoID;
	}
	public void setOrderCargoID(Integer orderCargoID) {
		this.orderCargoID = orderCargoID;
	}
	public String getOrderCargoName() {
		return orderCargoName;
	}
	public void setOrderCargoName(String orderCargoName) {
		this.orderCargoName = orderCargoName;
	}
	public String getWarehouseAppellative() {
		return warehouseAppellative;
	}
	public void setWarehouseAppellative(String warehouseAppellative) {
		this.warehouseAppellative = warehouseAppellative;
	}
}
