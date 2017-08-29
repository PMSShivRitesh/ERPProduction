package com.productionapp.dao.pp;

import java.sql.SQLException;
import java.util.List;

import com.productionapp.model.pp.InstrumentModel;

public interface InstrumentDao {
	public boolean saveInstrumentDetail(InstrumentModel imodelobj) throws SQLException;
	List<String>getInstrumentLst() throws SQLException;

}
