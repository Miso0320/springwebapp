package com.mycompany.springwebapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch12")
public class Ch12Controller {
	
	@RequestMapping("/content")
	public String content(HttpSession session) {
		return "ch12/content";
	}
	
	
}
