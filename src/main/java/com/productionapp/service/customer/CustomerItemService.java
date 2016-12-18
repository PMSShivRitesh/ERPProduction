package com.productionapp.customer.service;

import java.util.List;

import com.productionapp.customer.model.CustomerItems;



public interface CustomerItemService {
	public boolean allocateItem(CustomerItems custitem);
	public List getCustomerItems(int custId);
	public List<String> getCustomerItemCode(int custId);
	public List getCustItemRate(int custId,String itemCode);


}
