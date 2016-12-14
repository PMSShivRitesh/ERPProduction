package com.productionapp.customer.dao;

import java.util.List;

import com.productionapp.customer.model.CustomerDocuments;


public interface CustomerDocumentDao {
	public boolean saveCustomerDocumentsDetail(CustomerDocuments custdocmodel);
	public List<CustomerDocuments>getCustomerDocDetail(int custid);
	public boolean deleteCustomerDocuments(int docid);
	public boolean checkDocementExist(int custid,String docname);

}
