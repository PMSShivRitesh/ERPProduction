package com.productionapp.dao.invoice;

import java.util.List;

import com.productionapp.model.invoice.DChallanInvoiceDetail;

public interface DChallanInvoiceDao {
	List getInvoiceDchallanItems(int custid,int dchallanno);
	public int createDchallanInvoice(DChallanInvoiceDetail dchallaninvoicedetail);
}
