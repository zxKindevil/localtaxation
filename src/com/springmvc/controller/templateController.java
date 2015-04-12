package com.springmvc.controller;

import java.util.List;

import com.ibatis.bean.queryPBT;
import com.ibatis.bean.template;
import com.ibatis.dao.queryPBTDAO;
import com.ibatis.dao.queryPBTDAOImp;
import com.ibatis.dao.templateDAOImp;
import com.springmvc.exception.templateException;
import com.tools.tools;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/template")
public class templateController {
	public templateDAOImp imp;
	
	
	public templateController(){
		imp=new templateDAOImp();
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		System.out.println("to show template.jsp");
		return "template";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(template template,HttpSession session,Model model){
		
		imp.deleteAll();
		imp.insert(template);
		template=imp.selectByID(template);
		System.out.println(template.getStr2());
		
		if( template.getStr1().equals("error") ){
			throw new templateException("test error!");
		}
		session.setAttribute("template", template);
		return "template";
	}
	
	@RequestMapping(value="/poi",method=RequestMethod.GET)
	public String POI_GET(Model model){
		boolean ret=true;
		queryPBTDAO pbtImp=new queryPBTDAOImp();
		List<queryPBT> list_pbt=pbtImp.selectByQuePBT(new queryPBT());
		
		try {
			ret=tools.toExcel(list_pbt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("test poi");
		return tools.result(ret);
	}
}
