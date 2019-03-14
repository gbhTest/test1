package cn.inventory.pojo;

/**
 * 仓库表
 * 
 * @author LH
 * 
 */
public class Warehouse {
	private Integer id; // 仓库id
	private String warehouseAppellative;//仓库名称
	private String warehouseName;// 仓库负责人姓名
	private String warehouseAddress; // 仓库地址
	private String warehousePhone; // 负责人电话
	private String warehousePrincipal;//调货负责人
	private String warehouseNote;// 备注

	public Warehouse() {
		super();
	}

	public Warehouse(Integer id, String warehouseAppellative,
			String warehouseName, String warehouseAddress,
			String warehousePhone, String warehousePrincipal,
			String warehouseNote) {
		super();
		this.id = id;
		this.warehouseAppellative = warehouseAppellative;
		this.warehouseName = warehouseName;
		this.warehouseAddress = warehouseAddress;
		this.warehousePhone = warehousePhone;
		this.warehousePrincipal = warehousePrincipal;
		this.warehouseNote = warehouseNote;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getWarehouseAppellative() {
		return warehouseAppellative;
	}

	public void setWarehouseAppellative(String warehouseAppellative) {
		this.warehouseAppellative = warehouseAppellative;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public String getWarehouseAddress() {
		return warehouseAddress;
	}

	public void setWarehouseAddress(String warehouseAddress) {
		this.warehouseAddress = warehouseAddress;
	}

	public String getWarehousePhone() {
		return warehousePhone;
	}

	public void setWarehousePhone(String warehousePhone) {
		this.warehousePhone = warehousePhone;
	}

	public String getWarehousePrincipal() {
		return warehousePrincipal;
	}

	public void setWarehousePrincipal(String warehousePrincipal) {
		this.warehousePrincipal = warehousePrincipal;
	}

	public String getWarehouseNote() {
		return warehouseNote;
	}

	public void setWarehouseNote(String warehouseNote) {
		this.warehouseNote = warehouseNote;
	}

	
}
