package com.productionapp.dao.customer;

import java.util.List;

import com.productionapp.model.customer.CustomerItems;


public interface CustomerItemDao {
	public boolean allocateItem(CustomerItems custitem);
	public List getCustomerItems(int custId);
	public List<String> getCustomerItemCode(int custId);
	public String getCustItemRate(int custId,String itemCode);

}
