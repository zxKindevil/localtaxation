package com.ibatis.dao;

import java.util.List;

import com.ibatis.bean.business;

public interface businessDAO {
	public boolean create_nexist();
	public boolean insert(business busi);
	public boolean deleteByID(business busi);
	public business selectByID(business busi);
	public List<business> selectByProID(business busi);
	public List<business> selectAll();
	public boolean update(business busi);
}