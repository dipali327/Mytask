package com.softronix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.softronix.entity.Product;
import com.softronix.service.ProductService;

@Controller
public class HelloController {
	
	@Autowired
	ProductService service;
	
	@RequestMapping(value = "index",method=RequestMethod.GET)
	public String ind()
	{
		return "home";
	}
	
	@RequestMapping(value = "add", method=RequestMethod.GET)
	public String add()
	{
		return "add";
	}
	
	@RequestMapping(value = "save",method=RequestMethod.POST)
	public String saves(@RequestParam String name,@RequestParam String cost, @RequestParam String quant)
	{
		Product pro=new Product();
		pro.setName(name);
		pro.setCost(Integer.parseInt(cost));
		pro.setQuantity(Integer.parseInt(quant));
		Product pro1=new Product();
		
		pro1=service.savePro(pro);
		if(pro1==null)
		{
			return "error";
		}
		else
		{
			return "success";
		}
	}
		
	@RequestMapping(value ="delete",method=RequestMethod.GET)
	public String del() 
	{
		return "delete";
	}
	
	@RequestMapping(value ="del",method=RequestMethod.POST)
	public String dels(@RequestParam String id)
	{
		String status;
		status = service.deletePro(Integer.parseInt(id));
		if(status=="success")
		{
			return "success";
		}
		else
		{
			return "error";
		}
	}
	
	@RequestMapping(value = "view",method=RequestMethod.GET)
	public String view()
	{
		return "view";
	}
	@RequestMapping(value = "show",method=RequestMethod.POST)
	public String edit(@RequestParam String id,ModelMap map)
	{
		Product pro = new Product();
		pro = service.finds(Integer.parseInt(id));
		if(pro==null)
		{
			return "error";
		}
		else
		{
			map.addAttribute("id", pro.getId());
			map.addAttribute("product",pro);
			return "editform";
		}
	}
	
	@RequestMapping(value = "update",method=RequestMethod.POST)
	public String ups(@RequestParam String id,@RequestParam String name,@RequestParam  String cost, @RequestParam String quant,ModelMap map)
	{
		Product pro = new Product();
		pro.setId(Integer.parseInt(id));
		pro.setName(name);
		pro.setCost(Integer.parseInt(cost));
		pro.setQuantity(Integer.parseInt(quant));
		
		Product p = new Product();
		p=service.update(pro);
		if(p==null)
		{
			return "error";
		}
		else
		{
			return "success";
		}
	}
}

