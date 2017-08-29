package com.productionapp.service.pp;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.pp.InstrumentModel;

public interface InstrumentService {
	public boolean saveInstrumentDetail(InstrumentModel imodelobj) throws SQLException;
	List<String>getInstrumentLst() throws SQLException;

}
