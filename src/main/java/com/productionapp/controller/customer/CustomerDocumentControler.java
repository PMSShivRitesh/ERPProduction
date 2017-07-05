package com.productionapp.controller.customer;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.productionapp.model.customer.CustomerDocuments;
import com.productionapp.service.DocumentService;
import com.productionapp.service.customer.CustomerDocumentService;

@RestController
public class CustomerDocumentControler {

	@Autowired
	DocumentService docserivce;
	@Autowired
	CustomerDocumentService custdocservice;
	private Logger loger=Logger.getLogger(CustomerDocumentControler.class);
		

	@RequestMapping("/addDocumets")
	public ModelAndView getCustomerDocumentForm(@RequestParam(value="custId") String custId) 
	{
		loger.info("Get Form document register");
		
		ModelAndView model=new ModelAndView("/Customer/addDocumets");
		Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
		model.addObject("documentNamelst",documentNamelst);
		model.addObject("custId",custId);
		
		return model;
	}
	
	@RequestMapping("/checkdocumentexist")
	 public  String checkdocumentexist(@RequestParam(value="custId")String custId,@RequestParam(value="docname") String docname)
	{
		loger.info("check customer document exist or not");
		boolean flag=false;
		flag=custdocservice.checkDocementExist(Integer.parseInt(custId),docname);
		String returnText=null;
	        if(flag){
	        
	        	//cpservice.savecustProcessRate(custprocessrateobj);
	            returnText = "Document Number Exists " ;
	        }else{
	            returnText = "1";
	        }
	       
	        Gson gson=new Gson();
			String json=gson.toJson(returnText);
			return json;
	  
	}
	@RequestMapping("/addCustomerRegisterNo")
	public ModelAndView addCustomerRegisterNo(@ModelAttribute("custdocmodelobj") CustomerDocuments custdocmodelobj ) 
	{
		loger.info("add customer document detail");
		ModelAndView model;

		
		//if(custdocmodelobj.getCustId()!=0){
			//	model=new ModelAndView("/Customer/CustomerEditRegisterNumbersRequest");
			//}else{
			model=new ModelAndView("/Customer/addDocumets");
		//	}
			
			MultipartFile file = custdocmodelobj.getFile();
			
			if (!file.isEmpty()) {
				try {
					byte[] bytes = file.getBytes();

					// Creating the directory to store file
					Path newDir = Paths.get("E:\\TestCopy");
					String rootPath = newDir.toString();
					File dir = new File(rootPath + File.separator + "tmpFiles");
					if (!dir.exists())
						dir.mkdirs();

					// Create the file on server
					File serverFile = new File(dir.getAbsolutePath()
							+ File.separator);
					BufferedOutputStream stream = new BufferedOutputStream(
							new FileOutputStream(serverFile));
					stream.write(bytes);
					stream.close();
					custdocmodelobj.setDoclocation(serverFile.getAbsolutePath());
					loger.info("Server File Location="+ serverFile.getAbsolutePath());

						System.out.println("test *******************************************************"+serverFile.getAbsolutePath());
				} catch (Exception e) {
					 e.printStackTrace();
				}
			} else {
				System.out.println("You failed to upload because the file was empty.");
			}
			
			
			
			
			//custdocmodelobj.setUplodfile(file.getBytes());
			
			/* InputStream inputStream = null;
			 OutputStream outputStream = null;

			 MultipartFile file = custdocmodelobj.getFile();
		
			 String fileName = file.getOriginalFilename();
		  
			  try {
				inputStream = file.getInputStream();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			  File newFile = new File("C:/" + fileName);
			  String path=newFile.getPath();
			  custdocmodelobj.setDocloc(path);
			 loger.info("file name"+custdocmodelobj.getFile());
			  if (!newFile.exists())
			  {
				  try {
					newFile.createNewFile();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			  }
			  try {
				outputStream = new FileOutputStream(newFile);
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  int read = 0;
			  byte[] bytes = new byte[1024];

			  try {
				while ((read = inputStream.read(bytes)) != -1) {
					  outputStream.write(bytes, 0, read);
				  }
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
		  
		custdocservice.saveCustomerDocumentsDetail(custdocmodelobj);
		List<CustomerDocuments> custdoclst=new LinkedList<CustomerDocuments>();
		custdoclst=custdocservice.getCustomerDocDetail(custdocmodelobj.getCustId());
		
		model.addObject("custdoclst",custdoclst);
		
		model.addObject("custId",custdocmodelobj.getCustId());
		Map<String,String> documentNamelst=docserivce.getDocumentsListForDropdown();
		model.addObject("documentNamelst",documentNamelst);
		return model;
	}

	
	

	@RequestMapping("/deletecustomerdocument")
	 public String deletedocument(@RequestParam(value="custDocId")String custDocId) 
	{
		boolean flag=false;
		
		System.out.println("test *******************************************************"+custDocId);
		flag=custdocservice.deleteCustomerDocuments(Integer.parseInt(custDocId));
			return "deleted";
	  
	}
}


