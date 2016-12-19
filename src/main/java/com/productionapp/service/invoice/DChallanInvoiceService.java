package com.productionapp.service.invoice;

import java.util.List;

import com.productionapp.model.invoice.DChallanInvoiceDetail;

public interface DChallanInvoiceService {

	public List getInvoiceDchallanItems(int custid,int dchallanno);
	public int createDchallanInvoice(DChallanInvoiceDetail dchallaninvoicedetail);
}
