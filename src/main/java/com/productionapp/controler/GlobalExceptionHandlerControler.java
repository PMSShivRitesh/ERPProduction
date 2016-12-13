package com.productionapp.controler;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class GlobalExceptionHandlerControler {
	private Logger loger=Logger.getLogger(GlobalExceptionHandlerControler.class);

	@ExceptionHandler(value=NullPointerException.class)
	public String handleNullPointerException(Exception e){
		loger.error("Null Pointer Exception"+e);
		return "/Exceptions/NullPointerException";
	}
	
	@ExceptionHandler(value=IOException.class)
	public String handlerIoException(Exception e){
		loger.error("IO Exception");
		return "/Exceptions/IOException";
	}
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String handlerOtherException(Exception e){
		loger.error("Unknown Exception Occured"+e);
		return "/Exceptions/UnknownException";
	}

}
