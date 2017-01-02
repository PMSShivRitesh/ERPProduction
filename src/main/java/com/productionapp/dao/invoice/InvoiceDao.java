package com.productionapp.dao.invoice;

import java.util.List;

import com.productionapp.bean.InvoiceModel;
import com.productionapp.model.invoice.InvoiceItemDetail;

public interface InvoiceDao {
	public int createInvoice(InvoiceModel invoicemodel);
	public void saveInvoiceItems(InvoiceModel invoicemodel);
	public List<InvoiceItemDetail> getInvoiceItemList(int invoiceno);

}
