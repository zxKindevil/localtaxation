package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.bean.business;
import com.ibatis.bean.property;
import com.ibatis.bean.queryBean;
import com.ibatis.bean.tax;
import com.ibatis.dao.businessDAOImp;
import com.ibatis.dao.propertyDAOImp;
import com.ibatis.dao.taxDAOImp;
import com.tools.tools;

@Controller
@RequestMapping("/property")
public class ctrlProperty {
	public static propertyDAOImp proImp;
	public static businessDAOImp busiImp;
	public static taxDAOImp taxImp;
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String write_get(Model model){
		System.out.println("property/write_get");
		return "baseinfo/property/write";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write_post(property pro,Model model){
		if(null == proImp) proImp=new propertyDAOImp();
		System.out.println("pro: "+pro.getSystem_code());
		boolean flag=proImp.insert(pro);
		
		System.out.println("property/write_post");
		if(flag) return "result/success";
		else return "result/fail";
	}
	
	@RequestMapping(value="/delete/{argID}",method=RequestMethod.GET)
	public String delete_property_id_get(@PathVariable String argID,Model model){
		if(null == proImp) proImp=new propertyDAOImp();
		boolean ret=true;
		
		property pro=new property();
		try {
			pro.setProperty_id(Integer.parseInt(argID));
			proImp.deleteByID(pro);
		} catch (Exception e) {
			ret=false;
		}
		
		System.out.println("property/delete_property_id_get");
		if(ret) return "result/success";
		else return "result/fail";
		
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.GET)
	public String retrieve_get(Model model){
		System.out.println("property/retrieve_get");
		return "baseinfo/property/retrieve";
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.POST)
	public String retrieve_get(queryBean query,Model model){
		if(null == proImp) proImp=new propertyDAOImp();
		List<property> prolist=proImp.selectByQuePro(query);
		model.addAttribute("prolist", prolist);
		System.out.println("property/retrieve_get");
		return "baseinfo/property/retrieve";
	}
	
	@RequestMapping(value="/detail/{property_id}",method=RequestMethod.GET)
	public String detail_property_id_get(@PathVariable String property_id,Model model){
		if(null ==proImp) proImp=new propertyDAOImp();
		if(null ==busiImp) busiImp=new businessDAOImp();
		if(null ==taxImp) taxImp=new taxDAOImp();
		
		property pro=new property();
		business busi=new business();
		tax tax=new tax();
		
		//TODO 检验property_id 是否为int
		try {
			Integer.parseInt(property_id);
		} catch (Exception e) {
			return tools.result(false);
		}
			
		pro.setProperty_id(Integer.parseInt(property_id));
		busi.setProperty_id(Integer.parseInt(property_id));
		tax.setProperty_id(Integer.parseInt(property_id));
		pro=proImp.selectByID(pro);
		List<business> busi_list=busiImp.selectByProID(busi);
		List<tax> tax_list=taxImp.selectByProID(tax);
		
		model.addAttribute("pro", pro);
		model.addAttribute("busi_list", busi_list);
		model.addAttribute("tax_list", tax_list);
		
		System.out.println("property/detail/{property_id}.get");
		return "baseinfo/property/detail";
	}
}
