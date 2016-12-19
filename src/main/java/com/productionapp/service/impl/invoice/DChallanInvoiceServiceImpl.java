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

}
