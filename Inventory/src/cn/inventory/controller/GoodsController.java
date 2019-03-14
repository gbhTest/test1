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

import cn.inventory.pojo.Goods;
import cn.inventory.service.GoodsService;

@RequestMapping("/Goods")
@Controller
public class GoodsController {

	@Resource
	private  GoodsService goodsService;
	
	//全部查询，根据商品名称查询
	@RequestMapping("/getGoods.html")
	public String getGoodsController(@RequestParam(value="GoodsName",required=false)String GoodsName,
			@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,Model model){
		List<Goods> list = goodsService.getGoodsName(GoodsName);
		PageHelper.startPage(pageNo, 5);
		PageInfo<Goods> pageInfo = new PageInfo<Goods>(list);
		model.addAttribute("pageInfo", pageInfo);
		return "spgl";
	}
	
	//商品单个查询
	@RequestMapping("/upGoods.html")
	public String upGoods(@RequestParam("id")String id,Model model){
		Goods list = goodsService.gooGoods(Integer.parseInt(id));
		model.addAttribute("list", list);
		return "spxg";
	}
	
	//商品修改
	@RequestMapping("/updateGoods.json")
	@ResponseBody
	public int updateGoods(Goods goods){
		int count = goodsService.updateGoods(goods);
		return count;
	}

	@RequestMapping("/Goods.html")
	public String Goods(){
		
		return "xscx";
	}
}
