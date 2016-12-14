package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.SupplierContactsDao;
import com.productionapp.dao.SupplierDao;
import com.productionapp.model.SupplierConatactPersions;

@Transactional
@Service("suppliercontactsservice")
public class SupplierContactsServiceImpl implements SupplierContactsService {

	@Autowired
	SupplierContactsDao dao;
	public boolean saveContacts(SupplierConatactPersions suppconatacts) {
		// TODO Auto-generated method stub
		return dao.saveContacts(suppconatacts);
	}
	public List getSuppConatacts(int suppid) {
		// TODO Auto-generated method stub
		return dao.getSuppConatacts(suppid);
	}
	public boolean deleteSuppContact(int suppConatactId) {
		// TODO Auto-generated method stub
		return dao.deleteSuppContact(suppConatactId);
	}
	public boolean checksuppnameexist(int suppid, String suppcontactname) {
		// TODO Auto-generated method stub
		return dao.checksuppnameexist(suppid, suppcontactname);
	}
	

}
