package com.tools.poi;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.bean.business;
import com.ibatis.bean.property;
import com.ibatis.bean.queryPBT;
import com.ibatis.bean.tax;

public class Excel {

	public static void main(String[] args) {

	}
	
	public static boolean writeToDB(List<queryPBT> list_pbt){
		boolean ret=true;
		
		for(queryPBT ipbt:list_pbt){
			property pro=new property();
//			tax tax=new tax();
//			business busi=new business();
			
		}
		
		Map<String,String> map_proValues=new HashMap<String,String>();
//		map_proValues.put(ipbt,list)
		
//		new ReflectMatch().setValue(pro, map_proValues);
		
		return ret;
	}
}
