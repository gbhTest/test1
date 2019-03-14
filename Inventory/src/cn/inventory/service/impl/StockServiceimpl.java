package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.inventory.mapper.StockMapper;
import cn.inventory.pojo.Stock;
import cn.inventory.service.StockService;
@Service//业务实现注解
public class StockServiceimpl implements StockService {

	@Resource//映射注解
	private StockMapper stockMapper;
	
	public int getModification(Integer StockNumber, Integer id) {
		return stockMapper.getModification(StockNumber, id);
	}

	public int getRegister(Stock stock) {
		return stockMapper.getRegister(stock);
	}
	
	public int getCancel(Integer OrderCargoID) {
		return stockMapper.getCancel(OrderCargoID);
	}
	
	public List<Stock> getQuery(Integer IsOrderRefundCargo,
			Integer StockNumber, String StockDate) {
		return stockMapper.getQuery(IsOrderRefundCargo, StockNumber, StockDate);
	}
	
	public List<Stock> getStockList(Integer OrderCargoID, String OrderCargoName) {
		return stockMapper.getStockList(OrderCargoID, OrderCargoName);
	}

	@Override
	public Stock getStockByOrderCargoId(Integer id) {
		return stockMapper.getStockByOrderCargoId(id);
	}
	@Transactional
	@Override
	public int updateIsRefund(Integer OrderCargoID) {
		return stockMapper.updateIsRefund(OrderCargoID);
	}

	@Override
	public int getStockNumberCount() {
		return stockMapper.getStockNumberCount();
	}

	@Override
	public List<Stock> getStockCount() {
		return stockMapper.getStockCount();
	}
}
