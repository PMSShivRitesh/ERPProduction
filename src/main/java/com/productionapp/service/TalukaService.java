package com.productionapp.service;

import java.util.List;

import com.productionapp.model.Taluka;

public interface TalukaService {
	public boolean saveTaluka(Taluka obj);
	public List<Taluka>getTalukaListByDistrict(int districtid);
	public boolean deleteTaluka(int districtid,String talukaname);
}
