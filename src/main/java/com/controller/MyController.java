package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.model.MyModel;

@Controller
@SessionAttributes("MyModel")
public class MyController {

	@RequestMapping(value="/check", method= RequestMethod.POST)
	@ModelAttribute("MyModel")
	public ModelAndView remmeberMe(MyModel m) {
		
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("MyModel", m);
         mv.setViewName("welcome");
         return mv;
	}
}
