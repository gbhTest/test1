package cn.inventory.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.Client;
/**
 * 客户信息Client业务层
 * @author LH
 *
 */
public interface ClientService {
	/**
	 * 查询客户
	 * 查询全部
	 * @return
	 */
	public List<Client> getClientList(@Param("clientName")String clientName);

	/**
	 * 添加客户
	 * @param client
	 * @return
	 */
	public int getClientAdd(Client client);

	/**
	 * 修改客户
	 * @param client
	 * @return
	 */
	public int getClientUpd(Client client);

	/**
	 * 根据id删除客户
	 * @param id
	 * @return
	 */
	public int getClientDel(@Param("id") Integer id);
	
	/**
	 * 根据id查询用户
	 * @param id
	 * @return
	 */
	public Client getClient(@Param("id") Integer id);
}
