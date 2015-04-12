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
@RequestMapping("/file")
public class ctrlFile {
	@RequestMapping(value="/upload",method=RequestMethod.GET)
	public String upload_get(Model model){
		
		System.out.println("upload_get");
		return "template";
	}
}
