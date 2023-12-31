package com.mycompany.springwebapp.aspect;

import org.apache.logging.log4j.core.config.Order;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Order(1)
@Slf4j
public class Ch14Aspect5AfterThrowing {
	@AfterThrowing(
		pointcut="execution(public * com.mycompany.springwebapp.controller.Ch14Controller.afterThrowing*(..))",
		throwing="e"
	)
	public void method(Throwable e) {
		log.info("실행");
		log.info("예외 메시지 : " + e.getMessage());
	}
}
