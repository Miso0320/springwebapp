package com.mycompany.springwebapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.service.Ch12ServiceDiByAnnotaion;
import com.mycompany.springwebapp.service.Ch12ServiceDiByXml;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch12")
public class Ch12Controller {
	
	@Autowired
	private Ch12ServiceDiByXml serviceByXml;
	
	@Autowired
	private Ch12ServiceDiByAnnotaion serviceDiByAnnotaion;
	
	/*@Resource(name="name1")
	private Ch12ServiceCreateByXml service1;*/
	
	@RequestMapping("/content")
	public String content(HttpSession session) {
		/*service1.method1();
		service1.method2();*/
		
		serviceByXml.method();
		serviceDiByAnnotaion.method();
		
		return "ch12/content";
	}
}
