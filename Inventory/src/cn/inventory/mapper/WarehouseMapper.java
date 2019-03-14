package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Warehouse;

/**
 * 仓库管理接口
 * @author LH
 *
 */
public interface WarehouseMapper {

	/**
	 * 查询仓库
	 * @return
	 */
	public List<Warehouse> getWarehouseList();
	
	/**
	 * 添加仓库
	 * @param warehouse
	 * @return
	 */
	public int getWarehouseAdd(Warehouse warehouse);
	
	/**
	 * 修改仓库
	 * @param warehouse
	 * @return
	 */
	public int getWarehouseUpd(Warehouse warehouse);
	
	/**
	 * 删除仓库
	 * @param id
	 * @return
	 */
	public int getWarehouseDel(@Param("id")Integer id);
	
	/**
	 * 根据id查询仓库
	 * @param id
	 * @return
	 */
	public List<Warehouse> getWarehouses(Integer id);
	
	/**
	 * 删除仓库前对库存进行查询
	 * @param id
	 * @return
	 */
	public String getSelectStockMun(@Param("id")Integer id);
}
