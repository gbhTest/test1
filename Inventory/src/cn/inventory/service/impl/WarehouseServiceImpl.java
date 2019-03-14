package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.WarehouseMapper;
import cn.inventory.pojo.Warehouse;
import cn.inventory.service.WarehouseService;

/**
 * 仓库业务实现
 * 
 * @author LH
 * 
 */
@Service
public class WarehouseServiceImpl implements WarehouseService {

	// 注入Warehousemapper
	@Resource
	private WarehouseMapper warehouseMapper;

	public List<Warehouse> getWarehouseList() {
		return warehouseMapper.getWarehouseList();
	}

	public int getWarehouseAdd(Warehouse warehouse) {
		return warehouseMapper.getWarehouseAdd(warehouse);
	}

	public int getWarehouseUpd(Warehouse warehouse) {
		return warehouseMapper.getWarehouseUpd(warehouse);
	}

	public int getWarehouseDel(Integer id) {
		return warehouseMapper.getWarehouseDel(id);
	}

	@Override
	public List<Warehouse> getWarehouses(Integer id) {
		return warehouseMapper.getWarehouses(id);
	}

	@Override
	public String getSelectStockMun(Integer id) {
		return warehouseMapper.getSelectStockMun(id);
	}
}
