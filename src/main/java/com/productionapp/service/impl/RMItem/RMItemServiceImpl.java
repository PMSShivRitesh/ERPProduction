package com.productionapp.service.impl.RMItem;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.RMItem.RMItemDao;
import com.productionapp.model.Inventory.RMItem;
import com.productionapp.service.RMItem.RMItemService;

@Transactional
@Service("rmitemservice")
public class RMItemServiceImpl implements RMItemService {

	@Autowired
	RMItemDao dao;
	public boolean addRmItem(RMItem mobj) {
		// TODO Auto-generated method stub
		return dao.addRmItem(mobj);
	}
	public List<RMItem> getRmDetailList() {
		// TODO Auto-generated method stub
		return dao.getRmDetailList();
	}

}
