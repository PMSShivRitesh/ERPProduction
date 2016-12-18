package com.productionapp.sales.service;

import java.util.List;

import com.productionapp.bean.SalesOrderModel;


public interface SalesOrderService {
	public int saveSalesOrderDetail(SalesOrderModel salesordermodel);
	public void saveSalesOrderItems(SalesOrderModel salesordermodel);
	public List getSalesOrderitems(int salesorderno);

}
