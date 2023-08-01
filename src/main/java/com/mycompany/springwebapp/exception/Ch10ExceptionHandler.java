package com.mycompany.springwebapp.exception;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
@ControllerAdvice
public class Ch10ExceptionHandler {
	@ExceptionHandler(NullPointerException.class)
	public String handleNullPointerException() {
		log.info("실행");
		return "ch10/500_null";
	}
	
	@ExceptionHandler(ClassCastException.class)
	public String handleClassCastException() {
		log.info("실행");
		return "ch10/500_cast";
	}
	
	@ExceptionHandler(Ch10SoldOutException.class)
	public String handleSoldOutException(Ch10SoldOutException e, Model model) {
		log.info("실행");
		model.addAttribute("message", e.getMessage());
		return "ch10/500_soldout";
	}
	
	@ExceptionHandler
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String handleOhterException(Exception e) {
		return "ch10/500";
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String handle404() {
		return "ch10/404";
	}
	
	@ExceptionHandler(Ch15NotFoundAccountException.class)
	public String handleNotFoundException(Ch15NotFoundAccountException e, HttpSession session) {
		session.setAttribute("transferError", e.getMessage());
		return "redirect:/ch15/content";
	}
}
