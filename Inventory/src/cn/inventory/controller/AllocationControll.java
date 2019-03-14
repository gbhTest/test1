package cn.inventory.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.Allacoting;
import cn.inventory.service.AllocatingService;

@Controller
@RequestMapping("/Allacotion")
public class AllocationControll {

	//向控制器注入service层
	@Resource
	private AllocatingService aService;
	
	//转入调货管理查询界面  
	@RequestMapping("/index.html")
	public String getIndex(@RequestParam(value="AllocatingName",required=false)String AllocatingName,
						   @RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,
						   Model model){
		List<Allacoting> olist = aService.getRegister(AllocatingName);
		PageHelper.startPage(pageNo, 5);
		PageInfo<Allacoting> pageInfo = new PageInfo<Allacoting>(olist);
		model.addAttribute("pageInfo", pageInfo);
		return "dhgl";
	}
	
	//转入调货登记界面
	@RequestMapping("/getAdd.html")
	public String getAdd(){
		return "dhdj";
	}
	
	//调货登记
	@RequestMapping("/dhdj.html")
	public String getDengJi(Allacoting allacoting,@RequestParam("stockNumber")String stockNumber,Model model,HttpSession session){
		Integer stockNum = null;
		Integer calloutHouse = null;
		Integer flodHouse = null;
		int flag = aService.getAdd(allacoting);
		if(flag != 0){
			if(stockNumber != null && stockNumber != ""){
				stockNum = Integer.parseInt(stockNumber);
			}
			if(allacoting.getCalloutWarehouse() != null && allacoting.getCalloutWarehouse() != ""){
				calloutHouse = Integer.parseInt(allacoting.getCalloutWarehouse());
			}
			if(allacoting.getFoldWarehouse() != null && allacoting.getFoldWarehouse() != ""){
				flodHouse = Integer.parseInt(allacoting.getFoldWarehouse());
			}
			int drck = aService.addStock(stockNum, flodHouse);
			int dcck = aService.delStock(stockNum, calloutHouse);
			if(drck != 0 && dcck != 0){
				model.addAttribute("msg", "调库成功！！！");
				return"forward:/Allacotion/index.html";
			}else {
				model.addAttribute("msg", "调库失败！！！");
				return"dhdj";
			}
		}
		return "dhdj";
	}
	@ResponseBody
	@RequestMapping(value="/getDate.html",method=RequestMethod.POST)
	public Allacoting getDate(@RequestParam(value="calloutWarehouse",required=false)String calloutWarehouse,@RequestParam(value="foldWarehouse",required=false)String foldWarehouse){
		Allacoting allacoting = aService.getWarehouse(foldWarehouse, calloutWarehouse);
		if(allacoting != null){
			return allacoting;
		}
		return null;
	}	
	
}
