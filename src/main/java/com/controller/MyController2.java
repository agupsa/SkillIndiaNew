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
@SessionAttributes({"MyModel","t"})
public class MyController2 {

	@RequestMapping(value="/check2", method= RequestMethod.POST)
	public ModelAndView remmeberMe2(@SessionAttribute("MyModel") MyModel m1,@SessionAttribute("t") MyModel2 m2) {
		ModelAndView mv = new ModelAndView();
        mv.setViewName("welcome3");
        return mv;
	
	}
}
