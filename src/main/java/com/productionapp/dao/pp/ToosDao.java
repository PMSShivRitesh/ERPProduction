package com.productionapp.dao.pp;

import java.util.List;

import com.productionapp.model.pp.ToolModel;
public interface ToosDao {
	public boolean addTools(ToolModel toolmodel);
	List<ToolModel>getToolLst();
	public List<String>getToolnameLst();
	public boolean deleteTool(String toolName);

}
