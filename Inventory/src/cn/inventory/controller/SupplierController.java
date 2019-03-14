package cn.inventory.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.inventory.pojo.Supplier;
import cn.inventory.service.SupplierService;

@Controller
@RequestMapping("/Supplier")
public class SupplierController {
	
	@Resource
	private SupplierService suService;
	
	//查询全部供应商
	@RequestMapping("/ListSupplier.html")
	public String getSupplierList(@RequestParam(value="pageNo",defaultValue="0",required=false) Integer pageNo,Model model){
		List<Supplier> list = suService.getSupplierList();
		PageHelper.startPage(pageNo, 4);
		PageInfo<Supplier> pageInfo = new PageInfo<Supplier>(list);
		model.addAttribute("pageInfo", pageInfo);
		return "gysgl";
	}
	//跳转到新增界面
	
	@RequestMapping("/AddSupplier")
	public String getAdd(){
		return "gysgl-add";
	}
	
	//新增供应商
	@RequestMapping("/SupplierAdd.html")
	public String getSupplierAdd(@ModelAttribute("supplier")Supplier supplier){
		int count = suService.getSupplierAdd(supplier);
		if (count > 0) {
			return "forward:/Supplier/ListSupplier.html";
		}
		return "gysgl-add";
	}
	
	/**
	 * 验证供应商编号唯一
	 * @param supplierCode
	 * @return
	 */
	@RequestMapping("/getTitle")
	@ResponseBody//josn数据传输
	public String getTitle(String supplierCode){
		List<Supplier> list = suService.getTitle(supplierCode);
		if(list == null){
			return "1";
		}
		return "0";
	}
	
	//修改供应商
	@RequestMapping("/SupplierAlter.html")
	public String getSupplierAlter(Supplier supplier){
		int count = suService.getSupplierAlter(supplier);
		if (count > 0) {
			return "forward:/Supplier/ListSupplier.html";
		}
		return "gysgl-update";
	}
	
	//根据id删除供应商
	@RequestMapping("/SupplierDel.json")
	@ResponseBody//注入json数据
	public int getSupplierDel(Integer id){
		int count = suService.getSupplierDel(id);
		if (count > 0) {
			return 1;
		}
		return 0;
	}
	
	//根据id查询供应商
	@RequestMapping("/{id}/getSupplier.html")
	public String getSupplier(@PathVariable Integer id,Model model){
		Supplier supplier = suService.getSuppliers(id);
		model.addAttribute("list", supplier);
		return "gysgl-update";
	}
	
}
