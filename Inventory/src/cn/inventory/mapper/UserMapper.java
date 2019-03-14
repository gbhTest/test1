package cn.inventory.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.inventory.pojo.User;

/**
 * 系统管理User接口
 * @author LH
 *
 */
public interface UserMapper {

	/**
	 * 用户登录方法
	 * @param useraccount
	 * @return
	 */
	public User getUserCound(@Param("userAccount")String userAccount);
	/**
	 * 增加用户
	 * @param user
	 * @return
	 */
	public int inserUser(User user);

	/**
	 * 根据id删除用户
	 * @param id
	 * @return
	 */
	public int deleteUser(Integer id);

	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	public int getupdUser(User user);

	/**
	 * 查询用户数量
	 * @return
	 */
	public int countUser(@Param("userName")String userName);
	
	/**
	 * 查询全部用户
	 * @param userName根据姓名查询用户
	 * @param from 起始位置
	 * @param pageSize 页面容量
	 * @return
	 */
	public List<User> selectUser(@Param("userName")String userName,
			@Param("from")Integer from,
			@Param("pageSize")Integer pageSize);
	
	
	/**
	 * 判断 userSerial 用户编号是否唯一
	 * @param userSerial
	 * @return
	 */
	public List<User> getuserSerial(@Param("userSerial")String userSerial);

	/**
	 * 判断 userAccount 是否唯一
	 * @param userAccount
	 * @return
	 */
	public List<User> getuserAccount(@Param("userAccount")String userAccount);

	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public User getId(@Param("id") Integer id);
}
