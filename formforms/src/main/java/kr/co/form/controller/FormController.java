package kr.co.form.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.form.dao.FormService;
import kr.co.form.vo.FormVO;

@Controller
@RequestMapping
public class FormController {
	
	@Autowired
	FormService service;
	
	@RequestMapping(value="/index")
	public String index() {
		return "index";
	}
	
	//폼만들기 페이지로 이동
	@RequestMapping(value="/made")
	public String made() {
		return "made";
	}

	//새문서로 이동
	@RequestMapping(value="/insert")
	public String newform() {
		return "insert";
	}
	
	//폼 만들기(글쓰기)
/*	@RequestMapping(value="/insertfm")
	public String insertForm(FormVO vo) {		
		service.insertForm(vo);
		return "made"; 
	}*/
	
	@RequestMapping(value="/insertForm")
	public String insertForm(FormVO vo) {
		System.out.println(vo);
		return null; 
	}
	
	
	
	
	
}
