package com.productionapp.dao.invoice;

import java.util.List;

import com.productionapp.model.invoice.DChallanInvoiceDetail;

public interface DChallanInvoiceDao {
	List getInvoiceDchallanItems(int custid,int dchallanno);
	public int createDchallanInvoice(DChallanInvoiceDetail dchallaninvoicedetail);
	public List getInvoiceDetailLst();
	public List getInvoiceNolst(int custId,String status);
	public String getBillAmount(int invoiceno);
	public boolean updateDchallanInvoiceStatus(int invoiceno,String status);
	public List getCustInvoiceDetailLst(int custId);

}
