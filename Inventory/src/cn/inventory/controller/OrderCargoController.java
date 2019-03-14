package cn.inventory.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import cn.inventory.pojo.OrderCargo;
import cn.inventory.service.OrderCargoService;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/orderCargo")
public class OrderCargoController {

	@Resource
	private OrderCargoService orCargoService;

	// 从此处开始修改

	/**
	 * 显示供应商往来账--根据是否付款进行查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "/gyswlz.html")
	public String getSupplierList(
			Model model,
			@RequestParam(value = "queryProductName", required = false) String queryProductName,
			@RequestParam(value = "queryIsPayment", required = false) Integer queryIsPayment,
			@RequestParam(value = "pageNo", defaultValue = "0", required = false) Integer pageNo) {

		// 初始化变量
		List<OrderCargo> olist = null;

		// 总数量(表)
		int totalCount = orCargoService.getSupplierCount(queryProductName,
				queryIsPayment);

		// 列表显示
		olist = orCargoService
				.getSupplierList(queryProductName, queryIsPayment);
		// 成交总金额
		double sum = orCargoService.getSum();
		// 成功成交的订单数量
		int count = orCargoService.getCount();
		// 未成交订单数量
		int falgcount = totalCount - count;

		PageHelper.startPage(pageNo, 5);
		PageInfo<OrderCargo> pageInfo = new PageInfo<OrderCargo>(olist);

		model.addAttribute("sum", sum);// 成交总金额
		model.addAttribute("count", count);// 成功成交的订单数量
		model.addAttribute("falgcount", falgcount);// 未成交订单数量
		model.addAttribute("queryProductName", queryProductName);// 条件查询
		model.addAttribute("queryIsPayment", queryIsPayment);// 条件查询
		model.addAttribute("totalCount", totalCount);// 总数量
		model.addAttribute("pageInfo", pageInfo);
		return "gyswlz";
	}


	@RequestMapping(value = "/addOrderCargo.html", method = RequestMethod.POST)
	@ResponseBody
	public String addOrderCargo(OrderCargo order, HttpServletResponse response,
			HttpServletRequest request)
			throws IOException, ParseException {
		request.setCharacterEncoding("UTF-8");
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		JSONObject object = JSONObject.parseObject(request.getParameter("order"));
		order = object.toJavaObject(OrderCargo.class);
		Random random = new Random();
	
		char[] chr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
			        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < 4; i++) {
        buffer.append(chr[random.nextInt(36)]);
        }
		order.setOrderCargoCode("J_"+buffer);
		order.setOrderCargoDate(new Date());
		int flag = orCargoService.addOrderCargo(order);
		if (flag > 0) {
			return "1";
		} else {
			return "0";
		}
	}
	
	@RequestMapping("/payFor/{id}")
	public String payFor(@PathVariable("id")String id,RedirectAttributesModelMap modelMap){
		Integer oId = null;
		if(id != null && id != ""){
			oId = Integer.parseInt(id);
		}
		int flag = orCargoService.payFor(oId);
		if(flag>0){
			modelMap.addFlashAttribute("msg", "付款成功!!!");
			return"redirect:/stock/getQuery.html";
		}else {
			modelMap.addFlashAttribute("msg", "付款失败,请重试!!!");
			return"redirect:/stock/getQuery.html";
		}
	}

}
