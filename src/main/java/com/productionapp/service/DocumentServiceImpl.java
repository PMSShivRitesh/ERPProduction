package com.productionapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.productionapp.dao.DocumentDao;
import com.productionapp.model.Document;

@Service("documentservice")
@Transactional
public class DocumentServiceImpl implements DocumentService{
	@Autowired
	DocumentDao dao;

	public boolean saveDocument(Document docobj) {
		// TODO Auto-generated method stub
		return dao.saveDocument(docobj);
	}

	public List<String> getDocumentList() {
		// TODO Auto-generated method stub
		return dao.getDocumentList();
	}

	public boolean deleteDoc(String docname) {
		// TODO Auto-generated method stub
		return dao.deleteDoc(docname);
	}

	public Map<String, String> getDocumentsListForDropdown() {
		// TODO Auto-generated method stub
		return dao.getDocumentsListForDropdown();
	}

}
