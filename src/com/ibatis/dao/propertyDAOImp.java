package com.ibatis.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.bean.property;
import com.ibatis.bean.queryBean;

public class propertyDAOImp implements propertyDAO {
	public static SqlMapClient sqlClient=null;
	
	public propertyDAOImp(){
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
	public boolean create_nexist() {
		boolean ret=true;
		try {
			sqlClient.insert("property.create_nexist");
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean insert(property pro) {
		boolean ret=true;
		try {
			sqlClient.insert("property.insert", pro);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean deleteByID(property pro) {
		boolean ret=true;
		try {
			sqlClient.delete("property.deleteByID", pro);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public property selectByID(property pro) {
		property ret=null;
		try {
			ret = (property) sqlClient.queryForObject("property.selectByID", pro);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<property> selectAll() {
		List<property> retlist=null;
		try {
			retlist =sqlClient.queryForList("property.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}

	@Override
	public boolean update(property pro) {
		boolean ret=true;
		try {
			sqlClient.update("property.update", pro);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public List<property> selectByMulti(property pro) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<property> selectByQuePro(queryBean query) {
		List<property> retlist=null;
		try {
			retlist =sqlClient.queryForList("property.selectByQuePro",query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}
	
}
