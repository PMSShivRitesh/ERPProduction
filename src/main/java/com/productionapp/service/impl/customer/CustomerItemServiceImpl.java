package com.productionapp.service.impl.customer;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.customer.CustomerItemDao;
import com.productionapp.model.customer.CustomerItems;
import com.productionapp.service.customer.CustomerItemService;


@Transactional
@Service("custitemservice")
public class CustomerItemServiceImpl implements CustomerItemService {
	@Autowired
	CustomerItemDao dao;

	public boolean allocateItem(CustomerItems custitem) {
		// TODO Auto-generated method stub
		return dao.allocateItem(custitem);
	}

	public List getCustomerItems(int custId) {
		// TODO Auto-generated method stub
		return dao.getCustomerItems(custId);
	}

	public List<String> getCustomerItemCode(int custId) {
		// TODO Auto-generated method stub
		return dao.getCustomerItemCode(custId);
	}

	public String getCustItemRate(int custId, String itemCode) {
		// TODO Auto-generated method stub
		return dao.getCustItemRate(custId, itemCode);
	}

	public boolean checkcustitemexist(int custId, String itemCode) {
		// TODO Auto-generated method stub
		return dao.checkcustitemexist(custId, itemCode);
	}

	public boolean deleteCustomerItem(int custitemid) {
		// TODO Auto-generated method stub
		return dao.deleteCustomerItem(custitemid);
	}

}
