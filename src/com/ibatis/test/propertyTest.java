package com.ibatis.test;

import java.util.List;

import com.ibatis.bean.property;
import com.ibatis.bean.queryBean;
import com.ibatis.dao.propertyDAOImp;

public class propertyTest {
	
	public propertyDAOImp imp=new propertyDAOImp();
	
	public static void main(String args[]) {
		propertyTest test=new propertyTest();
		test.create_nexist();
//		test.insert();
//		test.deleteByID();
//		test.selectByQuePro();
//		test.selectAll();
//		test.update();
//		test.selectByMulti();
	}
	
	public void create_nexist(){
		boolean ret=imp.create_nexist();
		System.out.println(ret);
	}
	
	public void insert(){
		property pro=new property();
		boolean ret=imp.insert(pro);
		System.out.println(ret);
	}
	
	public void deleteByID(){
		property pro=new property();
		pro.setProperty_id(3);
		boolean ret=imp.deleteByID(pro);
		System.out.println(ret);
	}
	
	public void selectByID(){
		property pro=new property();
		pro.setProperty_id(3);
		pro=imp.selectByID(pro);
		System.out.println(pro);
	}
	
	public void selectByMulti(){
	}
	
	public void selectByQuePro(){
		queryBean query=new queryBean();
		query.setStreet("河");
		List<property> list=imp.selectByQuePro(query);
		System.out.println(list);
	}
	
	public void selectAll(){
		List<property> list=null;
		list=imp.selectAll();
		System.out.println(list);
	}
	
	public void update(){
	}
}