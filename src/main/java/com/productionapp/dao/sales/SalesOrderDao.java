package com.productionapp.dao.sales;

import java.util.List;

import com.productionapp.bean.SalesOrderModel;

public interface SalesOrderDao {
	public int saveSalesOrderDetail(SalesOrderModel salesordermodel);
	public void saveSalesOrderItems(SalesOrderModel salesordermodel);
	public List getSalesOrderitems(int salesorderno);

}
