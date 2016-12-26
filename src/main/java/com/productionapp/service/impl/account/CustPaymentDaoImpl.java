package com.productionapp.service.impl.account;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.account.custPaymentDao;
import com.productionapp.model.account.CustPayment;
import com.productionapp.service.account.CustPaymentService;

@Service("custpaymentdaoimpl")
@Transactional
public class CustPaymentDaoImpl implements CustPaymentService {
	@Autowired
	custPaymentDao dao;

	public boolean saveCustomerPayment(CustPayment mobj) {
		// TODO Auto-generated method stub
		return dao.saveCustomerPayment(mobj);
	}

	public String getCustBillCrediAmt(int billno) {
		// TODO Auto-generated method stub
		return dao.getCustBillCrediAmt(billno);
	}

	public List getCustCreditDetailLst(int custId) {
		// TODO Auto-generated method stub
		return dao.getCustCreditDetailLst(custId);
	}

}
