package com.ibatis.dao;

import java.util.List;

import com.ibatis.bean.tax;

public interface taxDAO {
	public boolean create_nexist();
	public boolean insert(tax tax);
	public boolean deleteByID(tax tax);
	public tax selectByID(tax tax);
	public List<tax> selectByProID(tax tax);
	public List<tax> selectAll();
	public boolean update(tax info);
}