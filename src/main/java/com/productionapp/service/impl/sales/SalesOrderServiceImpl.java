package com.productionapp.sales.serviceimpl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.bean.SalesOrderModel;
import com.productionapp.sales.dao.SalesOrderDao;
import com.productionapp.sales.service.SalesOrderService;


@Transactional
@Service("salesorderserviceimpl")
public class SalesOrderServiceImpl implements SalesOrderService {

	@Autowired
	SalesOrderDao salesorderdao;
	public int saveSalesOrderDetail(SalesOrderModel salesordermodel) {
		// TODO Auto-generated method stub
		return salesorderdao.saveSalesOrderDetail(salesordermodel);
	}
	public void saveSalesOrderItems(SalesOrderModel salesordermodel) {
		// TODO Auto-generated method stub
		salesorderdao.saveSalesOrderItems(salesordermodel);
		
	}
	public List getSalesOrderitems(int salesorderno) {
		// TODO Auto-generated method stub
		return salesorderdao.getSalesOrderitems(salesorderno);
	}

}
