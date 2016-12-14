package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.District;

public interface DistrictDao {
	public boolean saveDistrict(District district);
	public List getDistrictListBystatename(int stateid);
	public boolean deleteDistrict(String statename,String Distrinctname);

}
