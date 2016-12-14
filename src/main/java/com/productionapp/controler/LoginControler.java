package com.productionapp.controler;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.productionapp.service.UserSerivice;

@RestController
public class LoginControler {
	@Autowired
	UserSerivice userservice;
	Map<String,String> modellst;

	@RequestMapping("/login")
	public  String checkUser(@RequestParam(value="username")String username,@RequestParam(value="password")String password,HttpSession session,HttpServletRequest request) throws SQLException
	{
		final Logger logger = Logger.getLogger(LoginControler.class);
		logger.info("Login Controler");
		logger.debug("In Login Controler");
		ModelAndView model;
		boolean falg=userservice.checkUser(username, password);
		if(falg)
		{
			
			Map<String,String>userinfo=userservice.getUserInfo(username, password);
			for(Map.Entry m:userinfo.entrySet()){ 
				
				session.setAttribute(m.getKey().toString(), m.getValue());
				
				  }  
			
			modellst=userservice.getUserModules(username, password);
			session.setMaxInactiveInterval(1000);
			
			session.setAttribute("lists", modellst);
			
			return "true";
		}
		else
		{
			
			return "false";
		}
	}
	
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,HttpServletRequest request)
	{
		session.invalidate();
		return "login/login";
		
	}
	
	
	@RequestMapping("/getSystems")
	public ModelAndView geCustomertSystems(@RequestParam(value="moduleName",defaultValue="Mr Hanmant")String moduleName)
	{
		//ModelAndView model=new ModelAndView("/Homepages/homepage");
		ModelAndView model=new ModelAndView("home");

		try {
				Map<String,String> systemlst=userservice.getSystems(moduleName);
				model.addObject("systemlists",systemlst);
				//Map<String,String> modellst=userservice.getModuleList();
				model.addObject("lists",modellst);
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return model;
		
	}
	
	
	

}
