package com.ibatis.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.bean.tax;

public class taxDAOImp implements taxDAO {
	public static SqlMapClient sqlClient=null;
	
	public taxDAOImp(){
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
			sqlClient.insert("tax.create_nexist");
		} catch (Exception e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean insert(tax info) {
		boolean ret=true;
		try {
			sqlClient.insert("tax.insert", info);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean deleteByID(tax info) {
		boolean ret=true;
		try {
			sqlClient.delete("tax.deleteByID", info);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public tax selectByID(tax info) {
		tax ret=null;
		try {
			ret = (tax) sqlClient.queryForObject("tax.selectByID", info);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<tax> selectByProID(tax info) {
		List<tax> retlist=null;
		try {
			retlist =sqlClient.queryForList("tax.selectByProID",info);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}
	
	@Override
	public List<tax> selectAll() {
		List<tax> retlist=null;
		try {
			retlist =sqlClient.queryForList("tax.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}

	@Override
	public boolean update(tax info) {
		boolean ret=true;
		try {
			sqlClient.update("tax.update", info);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
}
