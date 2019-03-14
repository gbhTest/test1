package cn.inventory.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Supplier;

/**
 * 供应商Supplier业务层
 * 
 * @author LH
 * 
 */
public interface SupplierService {
	/**
	 * 页面显示供应商
	 * @return
	 */
	public List<Supplier> getSupplierList();

	/**
	 * 添加供应商
	 * @param supplier
	 * @return
	 */
	public int getSupplierAdd(Supplier supplier);
	
	/**
	 * 修改供应商
	 * @param supplier
	 * @return
	 */
	public int getSupplierAlter(Supplier supplier);
	
	/**
	 * 删除供应商(根据id删除供应商)
	 * @param id
	 * @return
	 */
	public int getSupplierDel(@Param("id")Integer id);
	
	/**
	 * 根据id查询供应商
	 * @param id
	 * @return
	 */
	public Supplier getSuppliers(Integer id);
	
	/**
	 * 验证供应商编号唯一
	 * @return
	 */
	public List<Supplier> getTitle(@Param("supplierCode")String supplierCode);
}
