package cn.inventory.pojo;
/**
 * 商品信息表
 * @author LH
 *
 */
public class Goods {
	private Integer id; // 商品信息id
	private String goodsName; // 商品名称
	private Integer goodsPrice; // 商品单价
	private String goodsUnit; // 商品单位
	private Integer supplierId; // 供应商id
	private Integer warehouseId;// 仓库id
	
	private Supplier supplier;//供应商表
	private Warehouse warehouse;//仓库表
	
	
	public Goods() {
		super();
	}

	public Goods(Integer id, String goodsName, Integer goodsPrice,
			String goodsUnit, Integer supplierId, Integer warehouseId,
			Supplier supplier, Warehouse warehouse) {
		super();
		this.id = id;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsUnit = goodsUnit;
		this.supplierId = supplierId;
		this.warehouseId = warehouseId;
		this.supplier = supplier;
		this.warehouse = warehouse;
	}




	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public Integer getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Integer goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsUnit() {
		return goodsUnit;
	}

	public void setGoodsUnit(String goodsUnit) {
		this.goodsUnit = goodsUnit;
	}

	public Integer getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(Integer supplierId) {
		this.supplierId = supplierId;
	}

	public Integer getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(Integer warehouseId) {
		this.warehouseId = warehouseId;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}
}
