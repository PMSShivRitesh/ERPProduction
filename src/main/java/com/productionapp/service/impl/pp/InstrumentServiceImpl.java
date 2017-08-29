package com.productionapp.service.impl.pp;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.productionapp.dao.pp.InstrumentDao;
import com.productionapp.model.pp.InstrumentModel;
import com.productionapp.service.pp.InstrumentService;

@Service("instrumentService")
public class InstrumentServiceImpl implements InstrumentService {
	@Autowired
	InstrumentDao dao;

	@Override
	public boolean saveInstrumentDetail(InstrumentModel imodelobj) throws SQLException {
		// TODO Auto-generated method stub
		return dao.saveInstrumentDetail(imodelobj);
	}

	@Override
	public List<String> getInstrumentLst() throws SQLException {
		// TODO Auto-generated method stub
		return dao.getInstrumentLst();
	}

}
