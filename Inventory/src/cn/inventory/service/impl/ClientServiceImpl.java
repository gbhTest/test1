package cn.inventory.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.inventory.mapper.ClientMapper;
import cn.inventory.pojo.Client;
import cn.inventory.service.ClientService;

/**
 * 客户管理Client业务实现层
 * @author LH
 *
 */
@Service
public class ClientServiceImpl implements ClientService {

	// 注入ClientMapper
	@Resource
	private ClientMapper clientMapper;

	@Override
	public List<Client> getClientList(String clientName) {
		return clientMapper.getClientList(clientName);
	}

	public int getClientAdd(Client client) {
		return clientMapper.getClientAdd(client);
	}

	public int getClientUpd(Client client) {
		return clientMapper.getClientUpd(client);
	}

	public int getClientDel(Integer id) {
		return clientMapper.getClientDel(id);
	}

	@Override
	public Client getClient(Integer id) {
		return clientMapper.getClient(id);
	}
	
	
}
