package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.SupplierMapper;
import cn.inventory.pojo.Supplier;
import cn.inventory.service.SupplierService;

/**
 * 供应商管理Supplier业务实现层
 * 
 * @author LH
 * 
 */
@Service
public class SupplierServiceImpl implements SupplierService {

	// 注入供应商映射
	@Resource
	private SupplierMapper supplierMapper;

	public List<Supplier> getSupplierList() {
		return supplierMapper.getSupplierList();
	}

	public int getSupplierAdd(Supplier supplier) {
		return supplierMapper.getSupplierAdd(supplier);
	}

	public int getSupplierAlter(Supplier supplier) {
		return supplierMapper.getSupplierAlter(supplier);
	}

	public int getSupplierDel(Integer id) {
		return supplierMapper.getSupplierDel(id);
	}

	@Override
	public Supplier getSuppliers(Integer id) {
		return supplierMapper.getSuppliers(id);
	}

	@Override
	public List<Supplier> getTitle(String supplierCode) {
		return supplierMapper.getTitle(supplierCode);
	}
}
