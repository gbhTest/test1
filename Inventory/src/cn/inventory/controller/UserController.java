package cn.inventory.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.inventory.pojo.User;
import cn.inventory.service.UserService;
import cn.inventory.util.PageBean;

@Controller
@RequestMapping("/User")
public class UserController {

	// 引入UserService
	@Resource
	private UserService userService;

	// 跳转首页
	@RequestMapping("/index.html")
	public String getIndex() {
		return "index";
	}

	/**
	 * 登录
	 * 
	 * @param userAccount
	 * @param userPassword
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/doLogin.json")
	@ResponseBody
	public Map<String, Object> doLogin(String userAccount, String userPassword,
			HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User user = userService.getUserCound(userAccount, userPassword);
			session.setAttribute("user", user);
			map.put("starts", 50);
			return map;
		} catch (Exception e) {
			map.put("mes", e.getMessage());
			return map;
		}
	}


	/**
	 * 注销
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout.html")
	public String getLogout(HttpSession session)
	{
		if(session.getAttribute("user") != null){
			session.removeAttribute("user");
			return "login";
		}
		return "index";
	}

	// 查询全部用户，根据姓名查询用户 分页
	@RequestMapping("/selectUser.html")
	public String selectUser(
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "from", required = false, defaultValue = "1") Integer from,
			Model model) {
		int pageSize = 5;
		// 总数
		Integer totalCount = userService.countUser(userName);
		// 分页
		PageBean pb = new PageBean();
		pb.setPageSize(pageSize);
		//pb.setCurrPageNo(from);
		pb.setCurrentPageNo(from);
		pb.setTotalCount(totalCount);
		pb.getTotalPageCount();//总页数
		List<User> list = userService.selectUser(userName, (from -1)*pageSize, pageSize);
		model.addAttribute("list", list);
		model.addAttribute("pb", pb);
		return "yg-jsgl";
	}

	// 添加跳转
	@RequestMapping("/AddUser.html")
	public String AddUser() {
		System.out.println("ssggr");
		return "tjyg";
	}

	// 添加
	@RequestMapping("/tjyg.html")
	// @RequestParam("user")
	public String inserUser(User user, Model model) {
		int count = userService.inserUser(user);
		if (count > 0) {
			return "redirect:/User/selectUser.html";
		}
		return "tjyg";
	}

	// 删除
	@RequestMapping("/deleteUser.html")
	public String deleteUser(@RequestParam("id") String id) {
		int count = userService.deleteUser(Integer.getInteger(id));
		if (count > 0) {
			return "redirect:/User/userlist.html";
		}
		return "";
	}

	/*
	 * //修改跳转
	 * 
	 * @RequestMapping(value="Alter.html") public String UpdUser(){ return
	 * "xgyg"; }
	 */

	// 修改用户
	@RequestMapping("getxgyg.html")
	public String getupdUser(User user) {
		int count = userService.getupdUser(user);
		if (count > 0) {
			return "redirect:/User/selectUser.html";
		}
		return "xgyg";
	}

	// 判断userSerial是否唯一
	@RequestMapping(value = "/userSerial.json")
	@ResponseBody
	public String getuserSerial(String userSerial) {
		List<User> list = userService.getuserSerial(userSerial);
		if (list == null || list.size() == 0) {
			return "1";
		}
		return "0";
	}

	// 判断userAccount是否唯一
	@RequestMapping(value = "userAccount.json")
	@ResponseBody
	public String getuserAccount(String userAccount) {
		List<User> list = userService.getuserAccount(userAccount);
		if (list == null || list.size() == 0) {
			return "1";
		}
		return "0";
	}

	// 根据id查询
	@RequestMapping(value = "/{id}/Alter.html")
	public String getid(@PathVariable Integer id, Model model) {
		User user = userService.getId(id);
		model.addAttribute("list", user);
		return "xgyg";
	}
}
