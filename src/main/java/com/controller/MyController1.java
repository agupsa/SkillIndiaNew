package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.model.MyModel;
import com.model.MyModel2;

@Controller
@SessionAttributes({"MyModel", "t"})
public class MyController1 {
	@RequestMapping(value="/check1", method= RequestMethod.POST)
	@ModelAttribute("t")
	public ModelAndView remmeberMe1(@SessionAttribute("MyModel") MyModel m,  MyModel2 m2) {
		
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("t",m2);
         mv.setViewName("welcome1");
         return mv;
	}
}