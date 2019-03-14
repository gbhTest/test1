package cn.inventory.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Allacoting;
/**
 * 调货Service
 */
public interface AllocatingService {
	
	/**
	 * 调货登记
	 * @param allacoting
	 * @return
	 */
	public int getAdd(Allacoting allacoting);
	/**
	 * 调货查询
	 * 根据AllocatingName(调货人姓名)单条件查询
	 * @param AllocatingName 
	 * @return
	 */
	public List<Allacoting> getRegister(@Param("AllocatingName")String AllocatingName);
	
	public Allacoting getWarehouse(@Param("CalloutWarehouse")String drck,@Param("FoldWarehouse")String dcck);
	
	public int addStock(@Param("stockNumber")Integer stockNumber,@Param("id")Integer stockId);
	
	public int delStock(@Param("stockNumber")Integer stockNumber,@Param("id")Integer stockId);
}
