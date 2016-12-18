package com.productionapp.service.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerDetail;


public interface CustomerDetailService {
	public int getCustId(String custName);
	boolean saveCustomerDetail(CustomerDetail mobj);
	public List<String> getCustNameAutocompleter(String custname);
	public boolean checCustomerExist(String custname);
	public CustomerDetail getCustomerDetail(int custid);
	public boolean updateCustomerDetail(CustomerDetail mobj);
	public List<CustomerDetail> getCustList();
	public CustomerDetail getApplyeTaxOfCustomer(int custID);
	public String getCustName(int custId);
}
