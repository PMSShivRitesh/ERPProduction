package com.productionapp.service.RMItem;

import java.util.List;

import com.productionapp.model.Inventory.RMItem;

public interface RMItemService {
	public boolean addRmItem(RMItem mobj);
	public List<RMItem>getRmDetailList();

}
