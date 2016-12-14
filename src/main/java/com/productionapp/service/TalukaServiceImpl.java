package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.TalukaDao;
import com.productionapp.model.Taluka;

@Transactional
@Service("talukaservice")
public class TalukaServiceImpl implements TalukaService{

	@Autowired
	TalukaDao dao;
	public boolean saveTaluka(Taluka obj) {
		// TODO Auto-generated method stub
		return dao.saveTaluka(obj);
	}
	public List<Taluka> getTalukaListByDistrict(int districtid) {
		// TODO Auto-generated method stub
		return dao.getTalukaListByDistrict(districtid);
	}
	public boolean deleteTaluka(int districtid, String talukaname) {
		// TODO Auto-generated method stub
		return dao.deleteTaluka(districtid, talukaname);
	}
	

}
