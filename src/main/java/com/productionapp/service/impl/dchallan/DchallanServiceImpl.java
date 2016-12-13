package com.productionapp.service.impl.dchallan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.bean.DChallanModel;
import com.productionapp.dao.dchallan.DchallanDao;
import com.productionapp.dchallan.model.DchallanDetail;
import com.productionapp.dchallan.model.DchallanItems;
import com.productionapp.service.dchallan.DchallanService;


@Service("Dchallanserviceimpl")
@Transactional
public class DchallanServiceImpl implements DchallanService {
	@Autowired
	DchallanDao dao;

	public int saveDchallanDetail(DChallanModel dchallan) {
		return dao.saveDchallanDetail(dchallan);
	}

	public void saveDchallanItems(DChallanModel dchallan) {
	     dao.saveDchallanItems(dchallan);	
	}

	public List<DchallanItems> getDchallanItemList(int dcchno) {
		
		return dao.getDchallanItemList(dcchno);
	}

	public boolean deletedchallanitems(int srno) {
		return dao.deletedchallanitems(srno);
	}

	public List<DchallanDetail> getallDchallanList() {
		return dao.getallDchallanList();
	}

	public DchallanDetail getDchallandetail(int dchallanno) {
		return dao.getDchallandetail(dchallanno);
	}

}
