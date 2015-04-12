package com.ibatis.dao;

import java.util.List;

import com.ibatis.bean.queryPBT;

public interface queryPBTDAO {
	public boolean create_nexist();
	public boolean insert(queryPBT pbt);
	public boolean deleteByID(queryPBT pbt);
	public queryPBT selectByID(queryPBT pbt);
	public List<queryPBT> selectByQuePBT(queryPBT pbt);
	public List<queryPBT> selectAll();
	public boolean update(queryPBT pbt);
}