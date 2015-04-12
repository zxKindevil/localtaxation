package com.ibatis.test;

import java.util.List;

import com.ibatis.bean.tax;
import com.ibatis.dao.taxDAOImp;

public class taxTest {
	
	public taxDAOImp imp=new taxDAOImp();
	
	public static void main(String args[]) {
		taxTest test=new taxTest();
//		test.create_nexist();
		test.selectByProID();
//		test.TB_selectByMulti();
//		test.insert();
//		test.deleteByID();
//		test.selectAll();
//		test.selectByID();
//		test.update();
//		test.selectByManagerID();
	}
	
	public void create_nexist(){
		boolean ret=imp.create_nexist();
		System.out.println(ret);
	}
	
	public void insert(){
		tax info=new tax();
		info.setProperty_id(9);
		boolean ret=imp.insert(info);
		System.out.println(ret);
	}
	
	public void deleteByID(){
	}
	
	public void selectByID(){
	}
	
	public void selectByProID(){
		tax tax=new tax();
		tax.setProperty_id(91);
		List<tax> list=imp.selectByProID(tax);
		System.out.println(list);
	}
	
	public void TB_selectByMulti(){
	}
	
	public void selectAll(){
	}
	
	public void update(){
	}
}