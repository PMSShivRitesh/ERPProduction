package com.productionapp.customer.dao;

import java.util.List;

import com.productionapp.customer.model.CustomerItems;


public interface CustomerItemDao {
	public boolean allocateItem(CustomerItems custitem);
	public List getCustomerItems(int custId);
	public List<String> getCustomerItemCode(int custId);
	public List getCustItemRate(int custId,String itemCode);

}
