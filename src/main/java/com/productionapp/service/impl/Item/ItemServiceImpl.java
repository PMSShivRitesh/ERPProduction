package com.productionapp.service.impl.Item;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.Item.ItemDao;
import com.productionapp.model.Inventory.Item;
import com.productionapp.service.Item.ItemService;


@Transactional
@Service("itemserviceimpl")
public class ItemServiceImpl implements ItemService{
	@Autowired
	ItemDao dao;

	public boolean crateItem(Item item) {
		// TODO Auto-generated method stub
		return dao.crateItem(item);
	}

	public List getItemDetailList() {
		// TODO Auto-generated method stub
		return dao.getItemDetailList();
	}

	public List<String> getItemCodeAutoComplete(String term) {
		// TODO Auto-generated method stub
		return dao.getItemCodeAutoComplete(term);
	}

	public List getItemCodeDetail(String itemCode) {
		// TODO Auto-generated method stub
		return dao.getItemCodeDetail(itemCode);
	}

}
