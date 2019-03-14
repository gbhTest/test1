package cn.inventory.pojo;
/**
 * 供应商表
 * @author LH
 *
 */
public class Supplier {
	private Integer id; // 供应商id
	private String supplierCode; // 供应商编号
	private String supplierGroup; // 供应商名称
	private String supplierName; // 供应商人姓名
	private String supplierAddress; // 供应商地址
	private String supplierPhone; // 联系电话
	private String email;// Email

	public Supplier() {
		super();
	}

	public Supplier(Integer id, String supplierCode, String supplierGroup,
			String supplierName, String supplierAddress, String supplierPhone,
			String email) {
		super();
		this.id = id;
		this.supplierCode = supplierCode;
		this.supplierGroup = supplierGroup;
		this.supplierName = supplierName;
		this.supplierAddress = supplierAddress;
		this.supplierPhone = supplierPhone;
		this.email = email;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSupplierCode() {
		return supplierCode;
	}

	public void setSupplierCode(String supplierCode) {
		this.supplierCode = supplierCode;
	}

	public String getSupplierGroup() {
		return supplierGroup;
	}

	public void setSupplierGroup(String supplierGroup) {
		this.supplierGroup = supplierGroup;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public String getSupplierPhone() {
		return supplierPhone;
	}

	public void setSupplierPhone(String supplierPhone) {
		this.supplierPhone = supplierPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

}
