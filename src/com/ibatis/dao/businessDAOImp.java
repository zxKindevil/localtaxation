package com.ibatis.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.bean.business;

public class businessDAOImp implements businessDAO {
	public static SqlMapClient sqlClient=null;
	
	public businessDAOImp(){
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
			sqlClient.insert("business.create_nexist");
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean insert(business busi) {
		boolean ret=true;
		try {
			sqlClient.insert("business.insert", busi);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean deleteByID(business busi) {
		boolean ret=true;
		try {
			sqlClient.delete("business.deleteByID", busi);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public business selectByID(business busi) {
		business ret=null;
		try {
			ret = (business) sqlClient.queryForObject("business.selectByID", busi);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<business> selectByProID(business busi) {
		List<business> retlist=null;
		try {
			retlist =sqlClient.queryForList("business.selectByProID",busi);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}
	
	@Override
	public List<business> selectAll() {
		List<business> retlist=null;
		try {
			retlist =sqlClient.queryForList("business.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}

	@Override
	public boolean update(business busi) {
		boolean ret=true;
		try {
			sqlClient.update("business.update", busi);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
}
