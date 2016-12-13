package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.StateDao;
import com.productionapp.model.State;

@Transactional
@Service("stateservice")
public class StateServiceImpl implements StateService {

	@Autowired
	StateDao dao;
	public boolean saveState(State stateobj) {
		// TODO Auto-generated method stub
		return dao.saveState(stateobj);
	}
	public List<State> getAllStateList(int countryId) {
		// TODO Auto-generated method stub
		return dao.getAllStateList(countryId);
	}
	public boolean deleteState(String sname) {
		// TODO Auto-generated method stub
		return dao.deleteState(sname);
	}

}
