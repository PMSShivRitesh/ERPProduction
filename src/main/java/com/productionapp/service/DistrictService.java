package com.productionapp.service;

import java.util.List;

import org.hibernate.criterion.Distinct;

import com.productionapp.model.District;

public interface DistrictService {
	public boolean saveDistrict(District district);
	public List getDistrictListBystatename(int stateid);
	public boolean deleteDistrict(String statename,String Distrinctname);
}
