package com.productionapp.dao.invoice;

import java.util.List;

public interface DChallanInvoiceDao {
	List getInvoiceDchallanItems(int custid,int dchallanno);
}
