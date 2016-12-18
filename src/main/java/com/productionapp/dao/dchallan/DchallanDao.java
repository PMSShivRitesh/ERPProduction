package com.productionapp.dao.dchallan;

import java.util.List;

import com.productionapp.bean.DChallanModel;
import com.productionapp.model.dchallan.DchallanDetail;
import com.productionapp.model.dchallan.DchallanItems;


public interface DchallanDao {
	public int saveDchallanDetail(DChallanModel dchallan);
	public void saveDchallanItems(DChallanModel dchallan);
	public List<DchallanItems> getDchallanItemList(int dcchno);
	public boolean deletedchallanitems(int srno);
	public List<DchallanDetail> getallDchallanList();
	public DchallanDetail getDchallandetail(int dchallanno);
	public boolean updateDchallanStatus(int dchallanno,String status);
	public List<String>getDChallannolst(int custId,String status);

}
