package cn.inventory.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.inventory.pojo.Warehouse;
import cn.inventory.service.WarehouseService;

@Controller
@RequestMapping("/warehouse")
public class WarehouseController {
	@Resource
	private WarehouseService warehouseService;
	
	//查寻所有仓库
	@RequestMapping("/getWarehouseList.html")
	public String getWarehouseList(Model model){
		List<Warehouse> warehouses = warehouseService.getWarehouseList();
		model.addAttribute("warehouses", warehouses);
		return"ckgl";
	}
	
	//根据id查询仓库
	@RequestMapping(value="/getWarehouseById/{id}")
	public String getWarehouses(@PathVariable String id,Model model,HttpSession session){
		Integer houseId = null;
		if(id != null){
			houseId = Integer.parseInt(id);
		}
		List<Warehouse> getHouseById = warehouseService.getWarehouses(houseId);
		model.addAttribute("houseListById", getHouseById);
		session.setAttribute("id", id);
		return"tc-ck-xq";
	}
	
	//点击添加的按钮
	@RequestMapping("/toAddCk.html")
	public String toAddCk(){		
		return"tjck";
	}
	//实现添加仓库功能
	@RequestMapping("/getWarehouseAdd.html")
	public String getWarehouseAdd(Warehouse warehouse,Model model){
		int flag = warehouseService.getWarehouseAdd(warehouse);
		if(flag !=0){
			 model.addAttribute("msg", "添加成功！");
			 return"forward:/warehouse/getWarehouseList.html";
		}else {
			return"tjck";
		}
	}
	
	//去修改仓库
	@RequestMapping("/toUpdate/{id}")
	public String toUpdate(@PathVariable("id")String id,Model model){
		Integer houseId = null;
		if(id != null){
			houseId = Integer.parseInt(id);
		}
		List<Warehouse> warehouses = warehouseService.getWarehouses(houseId);
		model.addAttribute("warehouses", warehouses);
		return"gxck";
	}
	
	/**
	 * 修改仓库
	 * @param warehouse
	 * @param model
	 * @return
	 */
	@RequestMapping("/getWarehouseUpd.html")
	public String getWarehouseUpd(Warehouse warehouse,Model model){
		int flag = warehouseService.getWarehouseUpd(warehouse);
		if(flag !=0){
			model.addAttribute("msg", "修改成功！");
			return"forward:/warehouse/getWarehouseList.html";
		}else {
			return"tjck";
		}
	}
	
	/**
	 * 删除仓库
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/getWarehouseDel/{id}")
	public String getWarehouseDel(@PathVariable("id")String id,Model model){
		Integer wareId = null;
		if(id != null){
			wareId = Integer.parseInt(id);
		}
		String stockNum = warehouseService.getSelectStockMun(wareId);
		if(stockNum == "0" || stockNum == null){
			int flag = warehouseService.getWarehouseDel(wareId);
			if(flag > 0){
				model.addAttribute("msg", "删除成功！");
				return"forward:/warehouse/getWarehouseList.html";
			}else {
				model.addAttribute("msg", "删除失败!");
				return"forward:/warehouse/getWarehouseList.html";
			}
		}else {
			model.addAttribute("msg", "该仓库中还有商品，不能删除！！！！！");
			return"forward:/warehouse/getWarehouseList.html";
		}
		
	}
}
