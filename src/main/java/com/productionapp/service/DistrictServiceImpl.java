package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.DistrictDao;
import com.productionapp.model.District;
@Transactional
@Service("districtservice")
public class DistrictServiceImpl implements DistrictService{

	@Autowired
	DistrictDao dao;
	public boolean saveDistrict(District district) {
		// TODO Auto-generated method stub
		return dao.saveDistrict(district);
	}
	public List getDistrictListBystatename(int stateid) {
		// TODO Auto-generated method stub
		return dao.getDistrictListBystatename(stateid);
	}
	public boolean deleteDistrict(String statename,String Distrinctname) {
		// TODO Auto-generated method stub
		return dao.deleteDistrict(statename,Distrinctname);
	}

}
