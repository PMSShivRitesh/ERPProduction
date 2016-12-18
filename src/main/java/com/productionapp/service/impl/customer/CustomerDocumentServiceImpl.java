package com.productionapp.customer.serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.customer.dao.CustomerDocumentDao;
import com.productionapp.customer.model.CustomerDocuments;
import com.productionapp.customer.service.CustomerDocumentService;

@Service("customerdocservice")
@Transactional
public class CustomerDocumentServiceImpl implements CustomerDocumentService {
	@Autowired
	CustomerDocumentDao dao;

	public boolean saveCustomerDocumentsDetail(CustomerDocuments custdocmodel) {
		// TODO Auto-generated method stub
		return dao.saveCustomerDocumentsDetail(custdocmodel);
	}

	public List<CustomerDocuments> getCustomerDocDetail(int custid) {
		// TODO Auto-generated method stub
		return dao.getCustomerDocDetail(custid);
	}

	public boolean deleteCustomerDocuments(int docid) {
		// TODO Auto-generated method stub
		return dao.deleteCustomerDocuments(docid);
	}

	public boolean checkDocementExist(int custid, String docname) {
		// TODO Auto-generated method stub
		return dao.checkDocementExist(custid, docname);
	}

}
