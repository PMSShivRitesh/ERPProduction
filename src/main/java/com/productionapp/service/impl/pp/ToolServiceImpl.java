package com.productionapp.service.impl.pp;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.pp.ToosDao;
import com.productionapp.model.pp.ToolModel;
import com.productionapp.service.pp.ToolService;
@Transactional
@Service("toolservice")
public class ToolServiceImpl implements ToolService {
	
	@Autowired
	ToosDao dao;

	@Override
	public boolean addTools(ToolModel toolmodel) {
		// TODO Auto-generated method stub
		return dao.addTools(toolmodel);
	}

	@Override
	public List<ToolModel> getToolLst() {
		// TODO Auto-generated method stub
		return dao.getToolLst();
	}

	@Override
	public List<String> getToolnameLst() {
		// TODO Auto-generated method stub
		return dao.getToolnameLst();
	}

	@Override
	public boolean deleteTool(String toolName) {
		// TODO Auto-generated method stub
		return dao.deleteTool(toolName);
	}
	

}
