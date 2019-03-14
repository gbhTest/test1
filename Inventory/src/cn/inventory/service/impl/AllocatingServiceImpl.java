package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.inventory.mapper.AllocatingMapper;
import cn.inventory.pojo.Allacoting;
import cn.inventory.service.AllocatingService;
/**
 * 调货管理  serviceImpl
 * @author admin
 *
 */
@Service
public class AllocatingServiceImpl implements AllocatingService {

	/**
	 * mapper层映射
	 */
	@Resource
	private AllocatingMapper aMapper;
	
	public int getAdd(Allacoting allacoting) {
		return aMapper.getAdd(allacoting);
	}
	
	public List<Allacoting> getRegister(String AllocatingName) {
		return aMapper.getRegister(AllocatingName);
	}

	@Override
	public Allacoting getWarehouse(String drck, String dcck) {
		return aMapper.getWarehouse(drck, dcck);
	}

	@Override
	public int addStock(Integer stockNumber, Integer stockId) {
		return aMapper.addStock(stockNumber, stockId);
	}
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public int delStock(Integer stockNumber, Integer stockId) {
		return aMapper.delStock(stockNumber, stockId);
	}

}
