package com.example.Boarda.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/")
	public String Main() {
		return "main";
	}

	@RequestMapping("/add")
	public String Add() {
		return "add";
	}

	@RequestMapping("/cancel")
	public String cancel() {
		return "main";
	}
	
}
