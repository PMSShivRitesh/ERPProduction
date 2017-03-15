package com.productionapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.ItemDao;
import com.productionapp.model.Item.Item;


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
