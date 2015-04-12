package com.ibatis.test;

import java.util.List;

import com.ibatis.bean.business;
import com.ibatis.bean.queryBean;
import com.ibatis.dao.businessDAOImp;

public class businessTest {
	
	public businessDAOImp imp=new businessDAOImp();
	
	public static void main(String args[]) {
		businessTest test=new businessTest();
//		test.create_nexist();
//		test.insert();
//		test.deleteByID();
//		test.selectByQuebusi();
		test.selectByID();
//		test.selectAll();
//		test.update();
//		test.selectByMulti();
	}
	
	public void create_nexist(){
		boolean ret=imp.create_nexist();
		System.out.println(ret);
	}
	
	public void insert(){
		business busi=new business();
		boolean ret=imp.insert(busi);
		System.out.println(ret);
	}
	
	public void deleteByID(){
		business busi=new business();
		busi.setBusiness_id(1);
		boolean ret=imp.deleteByID(busi);
		System.out.println(ret);
	}
	
	public void selectByID(){
		business busi=new business();
		busi.setBusiness_id(16);
		busi=imp.selectByID(busi);
		System.out.println(busi.getBusiness_end());
	}
	
	public void selectAll(){
		List<business> list=null;
		list=imp.selectAll();
		System.out.println(list);
	}
	
	public void update(){
		business busi=new business();
		busi.setBusiness_id(1);
		busi.setBusiness_name("修改测试");
		boolean ret=imp.update(busi);
		System.out.println(ret);
	}
}