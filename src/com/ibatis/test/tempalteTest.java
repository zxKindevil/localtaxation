package com.ibatis.test;


import com.ibatis.bean.template;
import com.ibatis.dao.templateDAOImp;

public class tempalteTest {
	
	public templateDAOImp imp=new templateDAOImp();
	
	public static void main(String args[]) {
		tempalteTest tset=new tempalteTest();
		tset.addtemplatetest();
	}
	
	public void addtemplatetest()
	{
		imp.deleteAll();
		template template=new template();
		template.setStr1("zx642678268");
		template.setStr2("123456");
		imp.insert(template);
		template=imp.selectByID(template);
		System.out.println(template.getStr2());
	}
}
