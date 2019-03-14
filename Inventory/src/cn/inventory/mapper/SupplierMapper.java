package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Supplier;

/**
 * 供应商Supplier接口
 * 
 * @author LH
 * 
 */
public interface SupplierMapper {

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
	public Supplier getSuppliers(@Param("id")Integer id);
	
	/**
	 * 验证供应商编号唯一
	 * @return
	 */
	public List<Supplier> getTitle(@Param("supplierCode")String supplierCode);
}
