package com.productionapp.customer.serviceimpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.customer.dao.CustomerItemDao;
import com.productionapp.customer.model.CustomerItems;
import com.productionapp.customer.service.CustomerItemService;


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

	public List getCustItemRate(int custId, String itemCode) {
		// TODO Auto-generated method stub
		return dao.getCustItemRate(custId, itemCode);
	}

}
