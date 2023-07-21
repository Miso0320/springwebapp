package com.mycompany.springwebapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.dto.*;
import com.mycompany.springwebapp.validator.Ch04Form1Validator;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch04")
public class Ch04Controller {
	@RequestMapping("/content")
	public String content(HttpServletRequest request) {
		return "ch04/content";
	}
	
	// 초기에 데이터가 들어갈 때 해당 메소드의 내용으로 바인딩 데이터 이용하라는 의미
	@InitBinder("ch04Form1")
	public void Ch04Form1Validator(WebDataBinder binder) {
		binder.setValidator(new Ch04Form1Validator());
	}
	
	@PostMapping("/method1")
	// pom.xml에 validation-api 라이브러리 의존 설정 필요
	// request.setAttribute("ch04Form1", form1);로 자동 저장
	public String method1(@Valid Ch04Form1 dto, Errors errors) {
		// errors.rejectValue(...)가 한 번이라도 호출되었다면 hasErrors()는 true를 리턴
		if(errors.hasErrors()) {
			return "ch04/content";
		}
		
		// 요청 처리 코드
		log.info("param1 : " + dto.getParam1());
		log.info("param2 : " + dto.getParam2());
		log.info("param3 : " + dto.getParam3());
		log.info("param4 : " + dto.isParam4());
		log.info("param5 : " + dto.getParam5());
		return "redirect:/";
	}
	
}
