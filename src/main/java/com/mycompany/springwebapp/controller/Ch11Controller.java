package com.mycompany.springwebapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.dto.Ch11Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch11")
public class Ch11Controller {
	
	@RequestMapping("/content")
	public String content(HttpSession session) {
		return "ch11/content";
	}
	
	// form의 기본값을 세팅하는 용도
	@GetMapping("/form1")
	public String form1(@ModelAttribute("member") Ch11Member member) {
		member.setMid("summer");
		member.setMname("홍길동");
		member.setMpassword("12345");
		member.setMnation("한국");
		return "ch11/form1";
	}
	
	// form의 값을 받아올 때 사용하는 용도
	@PostMapping("/form1")
	public String handleForm1(@ModelAttribute("member") Ch11Member member) {
		log.info(member.toString());
		return "redirect:/ch11/content";
	}
}
