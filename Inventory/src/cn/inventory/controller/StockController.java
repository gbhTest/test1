package cn.inventory.controller;

import java.text.ParseException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.Stock;
import cn.inventory.service.StockService;

@Controller
@RequestMapping("/stock")
public class StockController {

	/**
	 * 库存盘点与库存查询 orderId 根据订单id查询 orderName 根据订单商品名称
	 * 
	 */
	@Resource
	private StockService stockService;

	@RequestMapping("/getStockList.html")
	public String getStockList(
			@RequestParam(value = "OrderCargoID", required = false) String OrderCargoID,
			@RequestParam(value = "OrderCargoName", required = false) String OrderCargoName,
			@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,Model model) {
		Integer orderId = null;
		if (OrderCargoID != null && OrderCargoID != "") {
			orderId = Integer.parseInt(OrderCargoID);
		}
		List<Stock> stocks = stockService.getStockList(orderId, OrderCargoName);
		PageHelper.startPage(pageNo, 5);
		PageInfo<Stock> pageInfo = new PageInfo<Stock>(stocks);
		model.addAttribute("pageInfo", pageInfo);
		return "kcpd";
	}

	/**
	 * 入库查询 入库退货查询 IsOrderRefundCargo 根据是否退货订单查询 StockNumber 库存量查询 StockDate
	 * 入库日期查询
	 * 
	 * @throws ParseException
	 * 
	 */
	@RequestMapping("/getQuery.html")
	public String getQuery(
			@RequestParam(value = "IsOrderRefundCargo", required = false) String IsOrderRefundCargo,
			@RequestParam(value = "StockNumber", required = false) String StockNumber,
			@RequestParam(value = "StockDate", required = false) String StockDate,
			@RequestParam(value = "pageNo", defaultValue = "0", required = false) Integer pageNo,
			Model model) {

		PageHelper.startPage(pageNo, 5);
		List<Stock> stockQuery = stockService.getQuery(Integer
				.parseInt((IsOrderRefundCargo == null
				|| IsOrderRefundCargo.equals("") ? "0"
						: IsOrderRefundCargo)), Integer
						.parseInt((StockNumber == null || StockNumber.equals("") ? "0"
								: StockNumber)), StockDate);
		PageInfo<Stock> pageInfo = new PageInfo<Stock>(stockQuery);
		model.addAttribute("pageInfo", pageInfo);
		return "rkgl";
	}

	@RequestMapping("/toRegister/{id}")
	public String toRegister(@PathVariable String id, Model model,
			HttpSession session, HttpServletRequest request) {
		Integer orderCargoId = null;
		if (id != null && id != "") {
			orderCargoId = Integer.parseInt(id);
		}
		Stock stock = stockService.getStockByOrderCargoId(orderCargoId);
		Integer stockId = null;
		Integer isOrderRefundCargo = null;
		if (stock != null) {
			stockId = stock.getId();
			isOrderRefundCargo = stock.getOrderCargo().getIsOrderRefundCargo();
		}
		if (stockId != null && isOrderRefundCargo != 1) {
			model.addAttribute("msg", "已经入库登记完毕!!!");
			return "forward:/stock/getQuery.html";
		} else if (isOrderRefundCargo == 1) {
			model.addAttribute("msg", "该订单已经退货，不可入库!!!");
			return "forward:/stock/getQuery.html";
		} else {
			session.setAttribute("stock", stock);
			return "rkdj";
		}
	}
	
	@RequestMapping("/getRegister.html")
	public String getRegister(Stock stock,RedirectAttributesModelMap modelMap){
		int flag = stockService.getRegister(stock);
		if(flag > 0){
			modelMap.addAttribute("msg", "登记成功!!!");
			return "redirect:/stock/getQuery.html";
		}else {
			modelMap.addAttribute("msg", "登记失败!!!");
			return"redirect:/stock/getQuery.html";
		}
		
	}
	

	// 入库退货操作，退货成功后修改进货订单的是否为退货订单字段
	@RequestMapping("/rkth/{OrderCargoID}")
	public String rkth(@PathVariable String OrderCargoID, Model model,
			HttpSession session) {
		Integer id = null;
		if (OrderCargoID != null && OrderCargoID != "") {
			id = Integer.parseInt(OrderCargoID);
		}
		int updFlag = stockService.updateIsRefund(id);
		if (updFlag != 0) {
			model.addAttribute("msg", "入库退货成功！！！");
			return "forward:/stock/getQuery.html";
		} else {
			model.addAttribute("msg", "入库退货失败！！！");
			return "forward:/stock/getQuery.html";
		}
	}

	@RequestMapping(value="/yujing.html")
	public String getStockCount(Model model){
		int stockCount=stockService.getStockNumberCount();

		List<Stock> countList=stockService.getStockCount();
		model.addAttribute("stockCount", stockCount);
		model.addAttribute("countList", countList);
		return "index";
	}
}
