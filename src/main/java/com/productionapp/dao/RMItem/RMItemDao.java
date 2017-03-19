package com.productionapp.dao.RMItem;

import java.util.List;

import com.productionapp.model.Inventory.RMItem;

public interface RMItemDao {

	public boolean addRmItem(RMItem mobj);
	public List<RMItem>getRmDetailList();
}
