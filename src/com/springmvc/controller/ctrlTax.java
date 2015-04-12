package com.springmvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.bean.property;
import com.ibatis.bean.tax;
import com.ibatis.dao.propertyDAOImp;
import com.ibatis.dao.taxDAOImp;

@Controller
@RequestMapping("/tax")
public class ctrlTax {
	public static propertyDAOImp proImp;
	public static taxDAOImp taxImp;
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String write_get(Model model){
		
		System.out.println("/tax/write.get");
		return "taxinfo/write";
	}
	
	@RequestMapping(value="/write/{property_id}",method=RequestMethod.GET)
	public String write_property_id_get(@PathVariable String property_id,Model model){
		if(null == proImp) proImp=new propertyDAOImp();
		try {
			Integer.parseInt(property_id);
		} catch (Exception e) {
			//TODO 异常处理
			return "result/fail";
		}
		property pro=new property();
		pro.setProperty_id(Integer.parseInt(property_id));
		pro=proImp.selectByID(pro);
		model.addAttribute("pro", pro);
		
		System.out.println("/tax/write/{property_id}.get");
		return "taxinfo/write";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write_post(tax tax,Model model){
		if(null == taxImp) taxImp=new taxDAOImp();
		boolean ret=taxImp.insert(tax);
		
		System.out.println("/tax/write.post");
		if(ret) return "result/success";
		else return "result/fail";
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.GET)
	public String retrieve_get(Model model){
		
		System.out.println("/tax/retrieve.get");
		return "taxinfo/retrieve";
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.POST)
	public String retrieve_post(Model model){
		if(null == taxImp)taxImp=new taxDAOImp();
		List<tax> tax_list=taxImp.selectAll();
		model.addAttribute("tax_list", tax_list);
		
		System.out.println("/tax/retrieve.post");
		return "taxinfo/retrieve";
	}
}
