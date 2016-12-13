package com.productionapp.dao;

import java.util.List;

import com.productionapp.model.SupplierConatactPersions;

public interface SupplierContactsDao {
	public boolean saveContacts(SupplierConatactPersions suppconatacts);
	public List getSuppConatacts(int suppid);
	public boolean deleteSuppContact(int suppConatactId);
	public boolean checksuppnameexist(int suppid,String suppcontactname);

}
