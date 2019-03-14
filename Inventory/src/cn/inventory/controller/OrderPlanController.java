package cn.inventory.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.OrderPlan;
import cn.inventory.pojo.Supplier;
import cn.inventory.pojo.User;
import cn.inventory.service.OrderPlanService;

@Controller
@RequestMapping("/orderPlan")
public class OrderPlanController {

	@Resource
	private OrderPlanService orderPlanService;

	// 查询全部商品，根据商品名称查询/selectOrderPlan.html
	@RequestMapping("/selectOrderPlan.html")
	public String selectOrderPlan(@RequestParam(value="isOrderPlanApproval",required=false)String isOrderPlanApproval,
			@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,Model model) {

		List<OrderPlan> listOrder = orderPlanService
				.selectOrder(isOrderPlanApproval);
		PageHelper.startPage(pageNo, 4);
		PageInfo<OrderPlan> pageInfo = new PageInfo<OrderPlan>(listOrder);
		model.addAttribute("pageInfo",pageInfo);
		return "cgddjh";
	}

	/**
	 * 跳转到新增界面
	 * 
	 * @return
	 */
	@RequestMapping("/AddOrder.html")
	public String getAdd(Model model) {
		List<Supplier> list = orderPlanService.getSupplier();
		model.addAttribute("list", list);
		return "cgddjh-add";
	}

	// 增加商品
	@RequestMapping("/insertOrder.html")
	public String insertOrder(OrderPlan orderPlan) {
		int count = orderPlanService.insertOrder(orderPlan);
		if (count > 0) {
			return "forward:/orderPlan/selectOrderPlan.html";
		}
		return "forward:/orderPlan/AddOrder.html";
	}

	// 根据商品id删除商品
	@RequestMapping("/deleteOrder.json")
	@ResponseBody
	public int deleteOrder(Integer id) {
		int count = orderPlanService.deleteOrder(id);
		if (count > 0) {
			return 1;
		}
		return 0;
	}

	// 修改商品
	@RequestMapping("/updateOrder.html")
	public String updateOrder(OrderPlan orderPlan) {
		int count = orderPlanService.updateOrder(orderPlan);
		if (count > 0) {
			return "forward:/orderPlan/selectOrderPlan.html";
		}
		return "forward:/orderPlan/{id}/getOrderplan.html";
	}
	

	/**
	 * 审核订单
	 * 
	 * @param id
	 * @param session
	 * @return
	 */
	/*@RequestMapping("/updateIs.json")
	@ResponseBody
	public String getIs(Integer id, HttpSession session) {
		int count = orderPlanService.updateIs(id);
		if (!((User) session.getAttribute("user")).getUserFunction()
				.equals("经理")) {
			return "3";
		}else{
			if (count > 0) {
				return "1";
			}
		}
		return "0";
	}*/
	
	//去审核采购订单计划
	@RequestMapping("/updateIs/{id}")
	public String getIs(@PathVariable(value="id")Integer id, HttpSession session,RedirectAttributesModelMap modelMap) {
		int count = 0;
		
		if (((User) session.getAttribute("user")).getUserFunction()
				.equals("经理")) {
			count = orderPlanService.updateIs(id);
			OrderPlan plan = orderPlanService.getOrderPlan(id);
			if (count > 0) {
				modelMap.addFlashAttribute("msg", "审核成功!!!");
				session.setAttribute("plan", plan);
				return"redirect:/orderPlan/selectOrderPlan.html";
			}else {
				modelMap.addFlashAttribute("msg", "审核失败！！！");
				return"redirect:/orderPlan/selectOrderPlan.html";
			}
		}else{
			modelMap.addFlashAttribute("msg", "抱歉，您没有审核权限！！！");
			return"redirect:/orderPlan/selectOrderPlan.html";
		}
	}

	// 根据ID查询所有订单
	@RequestMapping("/getOrderplan.html/{id}")
	public String getOrderplan(@PathVariable Integer id, Model model) {
		OrderPlan orderlist = orderPlanService.getOrderPlans(id);
		List<Supplier> list = orderPlanService.getSupplier();
		model.addAttribute("orderlist", orderlist);
		model.addAttribute("list", list);
		return "cgddjh-update";
	}

}
