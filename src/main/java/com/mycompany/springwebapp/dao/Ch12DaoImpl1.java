package com.mycompany.springwebapp.dao;

import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch12DaoImpl1 implements Ch12BoardDao2 {
	@Override
	public void method() {
		log.info("실행");
	}
}
