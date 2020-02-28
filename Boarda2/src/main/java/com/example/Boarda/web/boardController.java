package com.example.Boarda.web;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Boarda.dao.BoardDaoo;

@RestController
public class boardController {
	@Autowired
	BoardDaoo baordDaoo;

	@RequestMapping("/getList.do")
	public Map<String, Object> list() {
		Map<String, Object> data = baordDaoo.list();
		return data;
	}

	@RequestMapping("/getSearchList.do")
	public Map<String, Object> search() {
		Map<String, Object> data = baordDaoo.search();
		return data;
	}

	@RequestMapping("/addBoad.do")
	public Enumeration<String> Add(HttpServletRequest req) {
		Enumeration<String> data = req.getParameter();
		while (data.hasMoreElements()) {
			String temp = data.nextElement();
		}

		return data;
	}

}
