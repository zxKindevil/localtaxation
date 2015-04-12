package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/mainview")
public class ctrlMainView {
	
	@RequestMapping(value="/show",method=RequestMethod.GET)
	public String show(Model model){
		System.out.println("/mianview/show.get to show MainView.jsp");
		return "MainView";
	}
}
