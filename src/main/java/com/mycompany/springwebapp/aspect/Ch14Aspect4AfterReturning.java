package com.mycompany.springwebapp.aspect;

import org.apache.logging.log4j.core.config.Order;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Order(1)
@Slf4j
public class Ch14Aspect4AfterReturning {
	@AfterReturning(
		pointcut="execution(public * com.mycompany.springwebapp.controller.Ch14Controller.afterReturning*(..))",
		returning="retrunValue"
	)
	public void method(String retrunValue) {
		log.info("실행");
		log.info("리턴값 : " + retrunValue);
	}
}
