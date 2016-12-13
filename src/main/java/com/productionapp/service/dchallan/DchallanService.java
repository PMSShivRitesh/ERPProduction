package com.productionapp.service.dchallan;

import java.util.List;

import com.productionapp.bean.DChallanModel;
import com.productionapp.dchallan.model.DchallanDetail;
import com.productionapp.dchallan.model.DchallanItems;

public interface DchallanService {
	public int saveDchallanDetail(DChallanModel dchallan);
	public void saveDchallanItems(DChallanModel dchallan);
	public List<DchallanItems> getDchallanItemList(int dcchno);
	public boolean deletedchallanitems(int srno);
	public List<DchallanDetail> getallDchallanList();
	public DchallanDetail getDchallandetail(int dchallanno);

}
