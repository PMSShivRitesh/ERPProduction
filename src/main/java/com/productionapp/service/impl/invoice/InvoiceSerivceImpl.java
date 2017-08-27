package com.productionapp.service.impl.invoice;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.bean.InvoiceModel;
import com.productionapp.dao.invoice.InvoiceDao;
import com.productionapp.model.invoice.DChallanInvoiceDetail;
import com.productionapp.model.invoice.InvoiceDetail;
import com.productionapp.model.invoice.InvoiceItemDetail;
import com.productionapp.service.invoice.InvoiceService;

@Transactional
@Service("InvoiceSerivceImpl")
public class InvoiceSerivceImpl implements InvoiceService {

	@Autowired
	InvoiceDao dao;
	public int createInvoice(InvoiceModel invoicemodel) {
		// TODO Auto-generated method stub
		return dao.createInvoice(invoicemodel);
	}
	public void saveInvoiceItems(InvoiceModel invoicemodel) {
		dao.saveInvoiceItems(invoicemodel);
		// TODO Auto-generated method stub
		
	}
	public List<InvoiceItemDetail> getInvoiceItemList(int invoiceno) {
		// TODO Auto-generated method stub
		return dao.getInvoiceItemList(invoiceno);
	}
	public boolean deleteinvoiceitems(int srno) {
		// TODO Auto-generated method stub
		return dao.deleteinvoiceitems(srno);
	}
	public InvoiceDetail getDchallandetail(int invoiceNoInt) {
		// TODO Auto-generated method stub
		return dao.getDchallandetail(invoiceNoInt);
	}
	public List<InvoiceDetail> getgeneralinvoicedetaillst() {
		// TODO Auto-generated method stub
		return dao.getgeneralinvoicedetaillst();
	}
	public boolean updateginvoicestatus(int invoiceno, String status) {
		// TODO Auto-generated method stub
		return dao.updateginvoicestatus(invoiceno, status);
	}
	public boolean insertInvoiceAmt(InvoiceDetail invoicedetail) {
		// TODO Auto-generated method stub
		return dao.insertInvoiceAmt(invoicedetail);
	}
	

}
