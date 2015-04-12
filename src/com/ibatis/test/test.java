package com.ibatis.test;

import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.ibatis.bean.queryPBT;

public class test {
	public static void main(String[] args) {
		queryPBT a = new queryPBT();
		a.setP_property_id("1111");
		Field fields[] = a.getClass().getDeclaredFields();
		String[] name = new String[fields.length];
		Object[] value = new Object[fields.length];
		try {
			Field.setAccessible(fields, true);
			for (int i = 0; i < name.length; i++) {
				name[i] = fields[i].getName();
				System.out.println(name[i] + "-> ");
				value[i] = fields[i].get(a);
				System.out.println(value[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
