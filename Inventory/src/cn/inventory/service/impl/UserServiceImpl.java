package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.UserMapper;
import cn.inventory.pojo.User;
import cn.inventory.service.UserService;

/**
 * 系统管理User实现层
 * 
 * @author LH
 * 
 */
@Service
public class UserServiceImpl implements UserService {

	// 注入USerMapper
	@Resource
	private UserMapper userMapper;

	@Override
	public User getUserCound(String userAccount,String userPassword) throws Exception {
		User user = userMapper.getUserCound(userAccount);
		if(user != null){
			if(user.getUserPassword().equals(userPassword)){
				return user;
			}else {
				throw new Exception("用户名或密码输入错误！");
			}
		}else {
			throw new Exception("用户不存在！");
		}
	}

	@Override
	public int countUser(String userName) {
		// TODO Auto-generated method stub
		return userMapper.countUser(userName);
	}

	@Override
	public List<User> selectUser(String userName, Integer from, Integer pageSize) {
		return userMapper.selectUser(userName, from, pageSize);
	}

	@Override
	public List<User> getuserSerial(String userSerial) {
		return userMapper.getuserSerial(userSerial);
	}

	@Override
	public List<User> getuserAccount(String userAccount) {
		// TODO Auto-generated method stub
		return userMapper.getuserAccount(userAccount);
	}

	@Override
	public User getId(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getId(id);
	}

	@Override
	public int inserUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.inserUser(user);
	}

	@Override
	public int deleteUser(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.deleteUser(id);
	}

	@Override
	public int getupdUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.getupdUser(user);
	}

	
}
