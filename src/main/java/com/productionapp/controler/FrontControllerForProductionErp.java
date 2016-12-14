package com.productionapp.controler;


import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@Scope("session")
public class FrontControllerForProductionErp {
	
	/*@RequestMapping("index")
	public String index(HttpSession session)
	{
		System.out.print("in controler");
		return "login/login";
	}*/
	
	@RequestMapping("homepageerp")
	public String homePage(HttpSession session)
	{
		return "home";
	}
	
	
}
