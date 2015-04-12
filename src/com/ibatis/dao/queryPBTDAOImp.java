package com.ibatis.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.bean.queryPBT;

public class queryPBTDAOImp implements queryPBTDAO {
	public static SqlMapClient sqlClient=null;
	
	public queryPBTDAOImp(){
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
			sqlClient.insert("queryPBT.create_nexist");
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean insert(queryPBT pbt) {
		boolean ret=true;
		try {
			sqlClient.insert("queryPBT.insert", pbt);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
	@Override
	public boolean deleteByID(queryPBT pbt) {
		boolean ret=true;
		try {
			sqlClient.delete("queryPBT.deleteByID", pbt);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}

	@Override
	public queryPBT selectByID(queryPBT pbt) {
		queryPBT ret=null;
		try {
			ret = (queryPBT) sqlClient.queryForObject("queryPBT.selectByID", pbt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	@Override
	public List<queryPBT> selectByQuePBT(queryPBT pbt) {
		List<queryPBT> retlist=null;
		try {
			retlist =sqlClient.queryForList("queryPBT.selectByQuePBT",pbt);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}
	
	@Override
	public List<queryPBT> selectAll() {
		List<queryPBT> retlist=null;
		try {
			retlist =sqlClient.queryForList("queryPBT.selectAll");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retlist;
	}

	@Override
	public boolean update(queryPBT pbt) {
		boolean ret=true;
		try {
			sqlClient.update("queryPBT.update", pbt);
		} catch (SQLException e) {
			e.printStackTrace();
			ret=false;
		}
		return ret;
	}
	
}
