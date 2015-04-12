package com.ibatis.dao;

import java.util.ArrayList;
import com.ibatis.bean.template;

public interface tempalteDAO {
	
	//add a data to table 
	public boolean insert(template temp);
	//clear the table
	public void deleteAll();
	//delelte one data by it's id
	public void deleteByID(template temp);
	//select *
	public ArrayList selectAll();
	//select one data
	public template selectByID(template temp);
	//update a data
	public void update(template temp);
}