package com.si.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.si.model.Login;

/**
 * 
 * @author GR5 LTI
 * This Controller Logs everyone out and destroys session object so that data is not leaked
 *
 */


@Controller
public class LogoutController {
	
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletResponse res, @ModelAttribute("login") Login login, HttpSession ses) {

		System.out.println("Logging out");
		if(ses.getAttribute("can")!=null||ses.getAttribute("est")!=null) {
			System.out.println("got object from session");
		}
		ses.invalidate();
		return new ModelAndView("index", "message", "You have been successfully logged out");
	}

}
