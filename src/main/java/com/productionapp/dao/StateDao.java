package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.State;

public interface StateDao {
	boolean saveState(State sateobj);
	List<State> getAllStateList(int countryId);
	public boolean deleteState(String sname);
}
