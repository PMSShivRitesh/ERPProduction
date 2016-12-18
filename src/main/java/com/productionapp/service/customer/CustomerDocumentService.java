package com.productionapp.service.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerDocuments;


public interface CustomerDocumentService {
	public boolean saveCustomerDocumentsDetail(CustomerDocuments custdocmodel);
	public List<CustomerDocuments>getCustomerDocDetail(int custid);
	public boolean deleteCustomerDocuments(int docid);
	public boolean checkDocementExist(int custid,String docname);


}
