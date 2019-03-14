package cn.inventory.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.Client;
import cn.inventory.service.ClientService;

/**
 * 客户管理
 * 
 * @author LH
 * 
 */
@Controller
@RequestMapping("/Client")
public class ClientController {

	// 注入客户业务层
	@Resource
	private ClientService clientService;

	// 查询全部
	@RequestMapping("/ClientList.html")
	public String getClientList(@RequestParam(value="clientName",required=false)String clientName,
			@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,Model model) {
		List<Client> list = clientService.getClientList(clientName);
		PageHelper.startPage(pageNo, 4);
		PageInfo<Client> pageInfo = new PageInfo<Client>(list);
		model.addAttribute("pageInfo", pageInfo);
		return "khgl";
	}

	// 添加页面跳转
	@RequestMapping("/AddSkip.html")
	public String AddSkip() {
		return "clientAdd";
	}

	// 添加客户
	@RequestMapping("/clientAdd.json")
	@ResponseBody
	public int getClientAdd(Client client) {
		int count = clientService.getClientAdd(client);
		return count;
	}

	// 修改客户跳转页面
	@RequestMapping("/getModification.html")
	public String getClientByld(@RequestParam("id")Integer id,Model model) {
		Client list = clientService.getClient(id);
		model.addAttribute("list", list);
		return "khxg-update";
	}

	// 修改客户
	@RequestMapping("/getClientUpd.json")
	@ResponseBody
	public int getClientUpd(Client client,Model model) {
		int count = clientService.getClientUpd(client);
			return count;
	}

	// 删除客户
	@RequestMapping("/ClientDel.html")
	public String getClientDel(@RequestParam("id")String id) {
		int count = clientService.getClientDel(Integer.parseInt(id));
		if(count>0){
			return "redirect:/Client/ClientList.html";
		}
		return "";
	}
	
	//添加客户跳转
	@RequestMapping("/getModtjkh")
	public String getModtjkh(){
		System.out.println("asdfgasg");
		return "tjkh";
	}
}