package com.productionapp.service;

import java.util.List;

import com.productionapp.model.State;

public interface StateService {
	boolean saveState(State sateobj);
	List<State> getAllStateList(int countryId);
	public boolean deleteState(String sname);
}
