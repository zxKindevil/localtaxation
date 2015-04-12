package com.ibatis.dao;

import java.util.List;

import com.ibatis.bean.property;
import com.ibatis.bean.queryBean;

public interface propertyDAO {
	public boolean create_nexist();
	public boolean insert(property pro);
	public boolean deleteByID(property pro);
	public property selectByID(property pro);
	public List<property> selectByMulti(property pro);
	public List<property> selectByQuePro(queryBean query);
	public List<property> selectAll();
	public boolean update(property pro);
}