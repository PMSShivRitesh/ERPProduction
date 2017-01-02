package com.productionapp.service.invoice;

import java.util.List;

import com.productionapp.bean.InvoiceModel;
import com.productionapp.model.invoice.InvoiceItemDetail;

public interface InvoiceService {
	public int createInvoice(InvoiceModel invoicemodel);
	public void saveInvoiceItems(InvoiceModel invoicemodel);
	public List<InvoiceItemDetail> getInvoiceItemList(int invoiceno);

}
