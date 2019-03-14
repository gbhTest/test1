package cn.inventory.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.CustomerOrder;
import cn.inventory.pojo.Stock;
import cn.inventory.service.CustomerOrderService;
import cn.inventory.service.StockService;

@Controller
@RequestMapping("/CustomerOrder")
public class CustomerOrderController {

	/**
	 * 将service注入到控制器
	 */
	@Resource
	private CustomerOrderService customerOrderService;

	@Resource
	private StockService stockService;
	//销售查询 销售退货查询
	@RequestMapping("/query.html")
	public String getLogin(@RequestParam(value="clientName",required=false)String clientName,
			@RequestParam(value="isCustomerOrderPrice",required=false)Integer isCustomerOrderPrice,
			@RequestParam(value = "pageNo", defaultValue = "0", required = false) Integer pageNo,Model model){
		List<CustomerOrder> list = customerOrderService.getLogin(clientName,isCustomerOrderPrice);
		PageHelper.startPage(pageNo, 5);
		PageInfo<CustomerOrder> pageInfo = new PageInfo<CustomerOrder>(list);
		model.addAttribute("pageInfo", pageInfo);
		return "xscx";
	}

	//从此处开始修改
	/**
	 * 查询客户往来账
	 * @param model
	 * @param queryIsPayment
	 * @return
	 */
	@RequestMapping(value="/khwlz.html",method=RequestMethod.GET)
	public String getSupplier(Model model,
			@RequestParam(value="queryIsPayment",required=false)Integer queryIsPayment,
			@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo){

		//总数量(表)
		int totalCount=customerOrderService.getCusttomerOrderCount(queryIsPayment);
		//总页数
		PageHelper.startPage(pageNo, 4);//分页查询
		//列表显示
		List<CustomerOrder> clist=customerOrderService.getCusttomerOrderList(queryIsPayment);

		//成交金额
		double sum=customerOrderService.getSum();
		//成功成交的订单数量
		int count=customerOrderService.getCount();
		//未成功的成交的订单数量
		int falgcount=totalCount-count;
		model.addAttribute("sum", sum);//成交金额
		model.addAttribute("totalCount", totalCount);//总成交数量
		model.addAttribute("count", count);//成功成交的订单数量
		model.addAttribute("falgcount", falgcount);//未成功的成交的订单数量
		model.addAttribute("queryIsPayment", queryIsPayment);//是否付款
		PageInfo<CustomerOrder> pageInfo = new PageInfo<CustomerOrder>(clist);
		model.addAttribute("pageInfo", pageInfo);
		return "khwlz";
	}

	//曲线图方法
	@RequestMapping("/toDate")
	@ResponseBody
	public List<Map<String, Integer>> toDataAnalysis(@RequestParam(value="start",required=false)String start,@RequestParam(value="end",required=false)String end) throws ParseException{
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyy-MM-dd");
		//判断传入的start和end是否为空
		//如果为空查询全部
		//否则按照日期查询
		Date date1;
		Date date2;
		if("".equals(start)){
			start = null;
			date1 = null;
		}else {
			//将接受到的String类型的start转为date类型
			date1 = simpleDateFormat.parse(start);
		}
		if("".equals(end)){
			end = null;
			date2 = null;
		}else{
			//将接受到的String类型的end转为date类型
			date2 = simpleDateFormat.parse(end);
		}
		List<Map<String, Integer>> queryAllByDate = customerOrderService.queryAllByDate(date1, date2);;
		return queryAllByDate;//返回
	}

	//按照商品ID进行销售数量的查询，并按销售量降序排列
	@RequestMapping("/getGoodsSaleNum.html")
	public String goodsSaleNum(Model model){
		List<CustomerOrder> goodsSaleNumList = customerOrderService.getCustomerOrder();
		
		int stockCount=stockService.getStockNumberCount();
		List<Stock> countList=stockService.getStockCount();
		
		model.addAttribute("stockCount", stockCount);
		model.addAttribute("countList", countList);
		model.addAttribute("goodsList", goodsSaleNumList);
		return "index";
	}
}
