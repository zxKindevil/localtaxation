package com.springmvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.bean.queryPBT;
import com.ibatis.dao.queryPBTDAO;
import com.ibatis.dao.queryPBTDAOImp;

@Controller
@RequestMapping(value="/pbt")
public class ctrlPBT {
	public static queryPBTDAO pbtImp;
	
	@RequestMapping(value="/retrieve",method=RequestMethod.POST)
	public String retrieve_post(queryPBT pbt,String arg_isPaid,String arg_isChecked,Model model){
		if(null == pbtImp) pbtImp=new queryPBTDAOImp();
		System.out.println(pbt.getP_property_id());
		System.out.println(arg_isPaid);
		System.out.println(arg_isChecked);
		
		if(arg_isPaid.endsWith("是")){
			pbt.setT_first_half_year("true");
			pbt.setT_second_half_year("是");
		}else if(arg_isPaid.endsWith("否")){
			pbt.setT_first_half_year("false");
			pbt.setT_second_half_year("否");
		}
		
		if(arg_isChecked.endsWith("是")){
			pbt.setT_checked("是");
		}else if(arg_isChecked.endsWith("否")){
			pbt.setT_checked("否");
		}
		
		List<queryPBT> pbt_list=pbtImp.selectByQuePBT(pbt);
		model.addAttribute("pbt_list", pbt_list);
		
		System.out.println("/pbt/retrieve.get");
		return "taxinfo/retrieve";
	}
}
