package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.Taluka;

public interface TalukaDao {
	public boolean saveTaluka(Taluka obj);
	public List<Taluka>getTalukaListByDistrict(int districtid);
	public boolean deleteTaluka(int districtid,String talukaname);

}
