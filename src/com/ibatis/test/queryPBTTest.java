package com.ibatis.test;

import java.util.List;

import com.ibatis.bean.queryPBT;
import com.ibatis.dao.queryPBTDAOImp;

public class queryPBTTest {
	
	public queryPBTDAOImp imp=new queryPBTDAOImp();
	
	public static void main(String args[]) {
		queryPBTTest test=new queryPBTTest();
//		test.create_nexist();
		test.selectByQuePBT();
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
		queryPBT pro=new queryPBT();
		boolean ret=imp.insert(pro);
		System.out.println(ret);
	}
	
	public void deleteByID(){
	}
	
	public void selectByID(){
	}
	
	public void selectByMulti(){
	}
	
	public void selectByQuePBT(){
		queryPBT pbt=new queryPBT();
//		pbt.setP_property_id("93");
		List<queryPBT> list=imp.selectByQuePBT(pbt);
		System.out.println(list);
//		System.out.println(list.get(3).getP_property_owner());
	}
	
	public void selectAll(){
		List<queryPBT> list=null;
		list=imp.selectAll();
		System.out.println(list);
	}
	
	public void update(){
	}
}