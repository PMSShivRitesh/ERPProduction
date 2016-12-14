package com.productionapp.dchallan.service;

import java.util.List;

import com.productionapp.bean.DChallanModel;
import com.productionapp.dchallan.model.DchallanDetail;

public interface DchallanService {
	public int saveDchallanDetail(DChallanModel dchallan);
	public void saveDchallanItems(DChallanModel dchallan);
	public List getDchallanItemList(int dcchno);
	public boolean deletedchallanitems(int srno);
	public List getallDchallanList();
	public DchallanDetail getDchallandetail(int dchallanno);
	public boolean updateDchallanStatus(int dchallanno,String status);

}
