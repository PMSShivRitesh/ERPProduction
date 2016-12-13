package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.SupplierDao;
import com.productionapp.model.SupplierDetail;

@Service("supplierservice")
@Transactional
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	SupplierDao dao;
	public boolean saveSupplierDetail(SupplierDetail suppobj) {
		// TODO Auto-generated method stub
		return dao.saveSupplierDetail(suppobj);
	}
	public int getSupplierId(String suppname) {
		// TODO Auto-generated method stub
		return dao.getSupplierId(suppname);
	}
	public boolean checkSuppNameExist(String suppname) {
		// TODO Auto-generated method stub
		return dao.checkSuppNameExist(suppname);
	}
	public List<String> suppNameAutocompleter(String term) {
		// TODO Auto-generated method stub
		return dao.suppNameAutocompleter(term);
	}
	public SupplierDetail getsupplierdetail(int suppId) {
		// TODO Auto-generated method stub
		return dao.getsupplierdetail(suppId);
	}
	public boolean updateSupplierDetail(SupplierDetail suppobj) {
		// TODO Auto-generated method stub
		return dao.updateSupplierDetail(suppobj);
	}
	public List getSuppList() {
		// TODO Auto-generated method stub
		return dao.getSuppList();
	}
	
	

}
