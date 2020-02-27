package com.example.Boarda.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.Boarda.dao.BoardDaoo;

@RestController
public class boardController {
	@Autowired
	BoardDaoo baordDaoo;
	
	@RequestMapping("/")
	 public String Test() {
		return baordDaoo.count();
	}
}
