package com.productionapp.dao.account;

import java.util.List;

import com.productionapp.model.account.CustPayment;

public interface custPaymentDao {
	public boolean saveCustomerPayment(CustPayment mobj);
	public String getCustBillCrediAmt(int billno);
	public List getCustCreditDetailLst(int custId);

}
