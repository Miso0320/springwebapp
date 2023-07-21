package com.mycompany.springwebapp.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mycompany.springwebapp.dto.*;
import com.mycompany.springwebapp.validator.*;

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
	
	@InitBinder("ch04Form2")
	public void Ch04Form2Validator(WebDataBinder binder) {
		binder.setValidator(new Ch04Form2Validator());
	}
	
	@PostMapping("/method2")
	public String method2(@Valid Ch04Form2 dto, Errors errors) {
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
	
	@InitBinder("ch04Form3")
	public void Ch04Form3Validator(WebDataBinder binder) {
		binder.setValidator(new Ch04Form3Validator());
	}
	
	@PostMapping("/join")
	public String join(@Valid Ch04Form3 dto, Errors errors) {
		if(errors.hasErrors()) {
			return "ch04/content";
		}
		
		// 요청 처리 코드
		log.info("mid : " + dto.getMid());
		log.info("mpassword : " + dto.getMpassword());
		log.info("memail : " + dto.getMemail());
		log.info("mtel : " + dto.getMtel());
		return "redirect:/";
	}
	
	@InitBinder("ch04Form4")
	public void Ch04Form4Validator(WebDataBinder binder) {
		binder.setValidator(new Ch04Form4Validator());
	}
	
	@PostMapping("/login")
	public String login(@Valid Ch04Form4 dto, Errors errors) throws Exception {
		if(errors.hasErrors()) {
			return "ch04/content";
		}
		
		// 요청 처리 코드
		log.info("mid : " + dto.getMid());
		log.info("mpassword : " + dto.getMpassword());
		return "redirect:/";
	}
}
