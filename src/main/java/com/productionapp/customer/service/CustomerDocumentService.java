package com.productionapp.customer.service;

import java.util.List;

import com.productionapp.customer.model.CustomerDocuments;


public interface CustomerDocumentService {
	public boolean saveCustomerDocumentsDetail(CustomerDocuments custdocmodel);
	public List<CustomerDocuments>getCustomerDocDetail(int custid);
	public boolean deleteCustomerDocuments(int docid);
	public boolean checkDocementExist(int custid,String docname);


}
