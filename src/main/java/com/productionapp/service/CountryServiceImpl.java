package com.productionapp.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.CountryDao;
import com.productionapp.model.Country;


@Service("countryservice")
@Transactional
public class CountryServiceImpl implements CountryService{

	@Autowired
	CountryDao dao;
	public void saveCountry(Country mobj) {
		
		 dao.saveCountry(mobj);
	}
	
	public List<Country> getCountryList() {
		// TODO Auto-generated method stub
		return dao.getCountryList();
	}
	public boolean deleteCountry(Country mobj) {
		// TODO Auto-generated method stub
		return dao.deleteCountry(mobj);
	}

	public Map<String, String> getCountryListForDropdown() {
		// TODO Auto-generated method stub
		return dao.getCountryListForDropdown();
	}

	public boolean checkCountryExist(Country mobj) {
		// TODO Auto-generated method stub
		return dao.checkCountryExist(mobj);
	}

}
