package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Allacoting;

/**
 * 调货Mapper
 * @author admin
 */
public interface AllocatingMapper {
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
	/**
	 * 调货登记时异步查询仓库的负责人
	 * @param drck
	 * @param dcck
	 * @return
	 */
	public Allacoting getWarehouse(@Param("CalloutWarehouse")String drck,@Param("FoldWarehouse")String dcck);
	
	/**
	 * 根据仓库id更新仓库
	 * @param stockNumber
	 * @param stockId
	 * @return
	 */
	public int addStock(@Param("stockNumber")Integer stockNumber,@Param("id")Integer stockId);
	public int delStock(@Param("stockNumber")Integer stockNumber,@Param("id")Integer stockId);
	
}
