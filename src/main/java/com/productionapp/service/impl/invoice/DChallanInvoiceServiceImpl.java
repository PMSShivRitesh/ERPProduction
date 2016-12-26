package com.productionapp.service.impl.invoice;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.invoice.DChallanInvoiceDao;
import com.productionapp.model.invoice.DChallanInvoiceDetail;
import com.productionapp.service.invoice.DChallanInvoiceService;

@Service("DChallanInvoiceServiceImpl")
@Transactional
public class DChallanInvoiceServiceImpl implements DChallanInvoiceService{

	@Autowired
	DChallanInvoiceDao dao;
	public List getInvoiceDchallanItems(int custid, int dchallanno) {
		// TODO Auto-generated method stub
		return dao.getInvoiceDchallanItems(custid, dchallanno);
	}
	public int createDchallanInvoice(DChallanInvoiceDetail dchallaninvoicedetail) {
		// TODO Auto-generated method stub
		return dao.createDchallanInvoice(dchallaninvoicedetail);
	}
	public List getInvoiceDetailLst() {
		// TODO Auto-generated method stub
		return dao.getInvoiceDetailLst();
	}
	public List getInvoiceNolst(int custId,String status) {
		// TODO Auto-generated method stub
		return dao.getInvoiceNolst(custId,status);
	}
	public String getBillAmount(int invoiceno) {
		// TODO Auto-generated method stub
		return dao.getBillAmount(invoiceno);
	}
	public boolean updateDchallanInvoiceStatus(int invoiceno, String status) {
		// TODO Auto-generated method stub
		return dao.updateDchallanInvoiceStatus(invoiceno, status);
	}
	public List getCustInvoiceDetailLst(int custId) {
		// TODO Auto-generated method stub
		return dao.getCustInvoiceDetailLst(custId);
	}

}
