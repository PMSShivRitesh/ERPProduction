package com.productionapp.dchallan.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.bean.DChallanModel;
import com.productionapp.dchallan.dao.DchallanDao;
import com.productionapp.dchallan.model.DchallanDetail;
import com.productionapp.dchallan.service.DchallanService;


@Service("Dchallanserviceimpl")
@Transactional
public class DchallanServiceImpl implements DchallanService {
	@Autowired
	DchallanDao dao;

	public int saveDchallanDetail(DChallanModel dchallan) {
		// TODO Auto-generated method stub
		return dao.saveDchallanDetail(dchallan);
	}

	public void saveDchallanItems(DChallanModel dchallan) {
		// TODO Auto-generated method stub
	     dao.saveDchallanItems(dchallan);	
	}

	public List getDchallanItemList(int dcchno) {
		// TODO Auto-generated method stub
		return dao.getDchallanItemList(dcchno);
	}

	public boolean deletedchallanitems(int srno) {
		// TODO Auto-generated method stub
		return dao.deletedchallanitems(srno);
	}

	public List getallDchallanList() {
		// TODO Auto-generated method stub
		return dao.getallDchallanList();
	}

	public DchallanDetail getDchallandetail(int dchallanno) {
		// TODO Auto-generated method stub
		return dao.getDchallandetail(dchallanno);
	}

	public boolean updateDchallanStatus(int dchallanno, String status) {
		// TODO Auto-generated method stub
		return dao.updateDchallanStatus(dchallanno, status);
	}

}
