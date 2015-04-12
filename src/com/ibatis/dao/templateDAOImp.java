package com.ibatis.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.bean.template;

public class templateDAOImp implements tempalteDAO {
	public static SqlMapClient sqlClient=null;
	
	public templateDAOImp(){
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("com/ibatis/config/SqlMapConfig.xml");
			sqlClient = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public boolean insert(template template) {
		boolean ret=true;
		try {
			sqlClient.insert("template.insert",template);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public void deleteAll() {
		try {
			sqlClient.delete("template.deleteAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteByID(template template) {
		try {
			sqlClient.delete("template.deleteByID",template );
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	public ArrayList selectAll() {
		ArrayList rsList = new ArrayList();
		try {
			rsList = (ArrayList)sqlClient.queryForList("template.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rsList;		
	}

	@Override
	public template selectByID(template template) {
		template ret=null;
		try {
			ret = (template) sqlClient.queryForObject("template.selectByID", template);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public void update(template template) {
		try {
			sqlClient.update("template.update",template);
		} catch (SQLException e) {

			e.printStackTrace();
		}		
	}
}
