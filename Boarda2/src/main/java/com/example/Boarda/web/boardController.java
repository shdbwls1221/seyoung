package com.example.Boarda.web;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Boarda.dao.BoardDaoo;

@Controller
public class boardController {
	@Autowired
	BoardDaoo baordDaoo;

	@RequestMapping("/getList")
	public ModelAndView list() throws Exception{
		List<BardVO> list=baordDaoo.list();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("main");
		mav.addObject("main",list);
		return mav;
	}
	@RequestMapping(value="view.do",method=RequestMethod.GET)
	public ModelAndView view(@RequestParam int num, HttpSession ssesion) throws Exception{
		modelAndView mav=new ModelAndView();
		mav.setViewName("board/view");
		mav.addObject("dto",baordDaoo.view(num));
	}
	@RequestMapping(value="addBoad.do",method=RequestMethod.POST)
	public String add(@modelAttribute BoardVO vo) throws Exception {
		baordDaoo.add(vo);
		return "redirect:main";
	}
	@RequestMapping(value="editBoad.do",method=RequestMethod.POST)
	public String add(@modelAttribute BoardVO vo) throws Exception {
		baordDaoo.edit(vo);
		return "redirect:main";
	}
}
