package com.productionapp.service.invoice;

import java.util.List;

import com.productionapp.bean.InvoiceModel;
import com.productionapp.model.invoice.DChallanInvoiceDetail;
import com.productionapp.model.invoice.InvoiceDetail;
import com.productionapp.model.invoice.InvoiceItemDetail;

public interface InvoiceService {
	public int createInvoice(InvoiceModel invoicemodel);
	public void saveInvoiceItems(InvoiceModel invoicemodel);
	public List<InvoiceItemDetail> getInvoiceItemList(int invoiceno);
	public boolean deleteinvoiceitems(int srno);
	public InvoiceDetail getDchallandetail(int invoiceNoInt);
	public List<InvoiceDetail> getgeneralinvoicedetaillst();
	public boolean updateginvoicestatus(int invoiceno, String status);
	public boolean insertInvoiceAmt(InvoiceDetail invoicedetail);
}
