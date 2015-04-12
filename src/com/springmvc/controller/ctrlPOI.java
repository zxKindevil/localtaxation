package com.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.bean.queryPBT;
import com.tools.poi.readExcel;

@Controller
@RequestMapping("/poi")
public class ctrlPOI {
	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public String POI_GET(Model model){
		System.out.println("/poi/POI_GET");
		return "poi/input";
	}
	
	@RequestMapping(value="/input",method=RequestMethod.POST)
	public String POI_POST(String filepath,HttpServletRequest request,Model model){
		boolean ret=true;
		
		readExcel excel=new readExcel();
		List<queryPBT> list_pbt=excel.read();
		model.addAttribute("list_pbt", list_pbt);
		request.setAttribute("list", list_pbt);
		
		System.out.println("/poi/input.post");
		return "poi/inputlist";
	}
	
	@RequestMapping(value="/dbwrite",method=RequestMethod.POST)
	public String dbwrite_POST(HttpServletRequest request,Model model){
		boolean ret=true;
		
		readExcel excel=new readExcel();
		List<queryPBT> list_pbt=excel.read();
		model.addAttribute("list_pbt", list_pbt);
		request.setAttribute("list", list_pbt);
		
		System.out.println("/poi/input.post");
		return "poi/inputlist";
	}
}
