package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ibatis.dao.businessDAO;
import com.ibatis.dao.businessDAOImp;
import com.ibatis.dao.propertyDAO;
import com.ibatis.dao.propertyDAOImp;
import com.ibatis.dao.taxDAO;
import com.ibatis.dao.taxDAOImp;

@Controller
@RequestMapping(value="/admin")
public class ctrlAdmin {
	
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String main(Model model){
		System.out.println("/admin/main.get");
		
		return "admin/main";
	}
	
	@RequestMapping(value="/mysql_createTable",method=RequestMethod.GET)
	public String mysql_createTable_get(Model model){
		propertyDAO proImp=new propertyDAOImp();
		businessDAO busiImp=new businessDAOImp();
		taxDAO taxImp=new taxDAOImp();
		
		proImp.create_nexist();
		busiImp.create_nexist();
		taxImp.create_nexist();
		
		System.out.println("/admin/mysql_createTable.get");
		return "result/success";
	}
}
