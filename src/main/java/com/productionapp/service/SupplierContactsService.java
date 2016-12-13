package com.productionapp.service;

import java.util.List;

import com.productionapp.model.SupplierConatactPersions;

public interface SupplierContactsService {

	public boolean saveContacts(SupplierConatactPersions suppconatacts);
	public List getSuppConatacts(int suppid);
	public boolean deleteSuppContact(int suppConatactId);
	public boolean checksuppnameexist(int suppid,String suppcontactname);
}
