package com.productionapp.service.impl.customer;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.customer.CustomerDetailDao;
import com.productionapp.model.customer.CustomerDetail;
import com.productionapp.service.customer.CustomerDetailService;


@Transactional
@Service("customerdetailservice")
public class CustomerDetailServiceImpl implements CustomerDetailService {

	@Autowired
	CustomerDetailDao dao;
	
	public boolean saveCustomerDetail(CustomerDetail mobj) {
		// TODO Auto-generated method stub
		return dao.saveCustomerDetail(mobj);
	}
	public boolean checCustomerExist(String custname) {
		// TODO Auto-generated method stub
		return dao.checCustomerExist(custname);
	}
	public int getCustId(String custName) {
		// TODO Auto-generated method stub
		return dao.getCustId(custName);
	}
	public List<String> getCustNameAutocompleter(String custname) {
		// TODO Auto-generated method stub
		return dao.getCustNameAutocompleter(custname);
	}
	public CustomerDetail getCustomerDetail(int custid) {
		// TODO Auto-generated method stub
		return dao.getCustomerDetail(custid);
	}
	public boolean updateCustomerDetail(CustomerDetail mobj) {
		// TODO Auto-generated method stub
		return dao.updateCustomerDetail(mobj);
	}
	public List<CustomerDetail> getCustList() {
		// TODO Auto-generated method stub
		return dao.getCustList();
	}
	public CustomerDetail getApplyeTaxOfCustomer(int custID) {
		// TODO Auto-generated method stub
		return dao.getApplyeTaxOfCustomer(custID);
	}
	public String getCustName(int custId) {
		// TODO Auto-generated method stub
		return dao.getCustName(custId);
	}
		

}
