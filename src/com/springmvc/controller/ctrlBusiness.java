package com.springmvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.bean.business;
import com.ibatis.bean.property;
import com.ibatis.dao.businessDAOImp;
import com.ibatis.dao.propertyDAOImp;
import com.tools.tools;

@Controller
@RequestMapping("/business")
public class ctrlBusiness {
	public static businessDAOImp busiImp;
	public static propertyDAOImp proImp;
	
	@RequestMapping(value="/write",method=RequestMethod.GET)
	public String write_get(Model model){
		System.out.println("business/write_get");
		return "baseinfo/business/write";
	}
	
	@RequestMapping(value="/write/{argID}",method=RequestMethod.GET)
	public String write_argID_get(@PathVariable String argID,Model model){
		if(null == proImp) proImp =new propertyDAOImp();
		
		property pro=new property();
		try {
			pro.setProperty_id(Integer.parseInt(argID));
			pro=proImp.selectByID(pro);
		} catch (Exception e) {
		}
		model.addAttribute("pro", pro);
		
		System.out.println("business/write_argID_get");
		return "baseinfo/business/write";
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String write_post(business busi,Model model){
		if(null ==busiImp) busiImp=new businessDAOImp();
		boolean ret=true;
		
		busi.setBusiness_start(tools.date_uiToDB(busi.getBusiness_start()));
		busi.setBusiness_end(tools.date_uiToDB(busi.getBusiness_end()));
		try {
			busiImp.insert(busi);
		} catch (Exception e) {
			e.printStackTrace();
			ret=false;
		}
		
		return tools.result(ret);
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.GET)
	public String retrieve_get(Model model){
		System.out.println("business/retrieve_get");
		return "baseinfo/business/retrieve";
	}
	
	@RequestMapping(value="/retrieve",method=RequestMethod.POST)
	public String retrieve_post(Model model){
		if(null == busiImp) busiImp=new businessDAOImp();
		List<business> busi_list=busiImp.selectAll(); 
		model.addAttribute("busi_list", busi_list);
		System.out.println("business/retrieve_post");
		return "baseinfo/business/retrieve";
	}
	
}
