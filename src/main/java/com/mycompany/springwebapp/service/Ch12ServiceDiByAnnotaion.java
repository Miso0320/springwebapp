package com.mycompany.springwebapp.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation1;
import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation2;
import com.mycompany.springwebapp.dao.Ch12DaoByAnnotation3;
import com.mycompany.springwebapp.dao.Ch12DaoI;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class Ch12ServiceDiByAnnotaion {
	// 필드
	//@Autowired // @Resource
	private Ch12DaoByAnnotation1 daoAnnotaion1;
	private Ch12DaoByAnnotation2 daoAnnotaion2;
	private Ch12DaoByAnnotation3 daoAnnotaion3;
	
	// @Resource(name="ch12DaoImpl2")
	@Autowired @Qualifier("ch12DaoImpl1")
	private Ch12DaoI ch12Dao;
	
	// 생성자
	public Ch12ServiceDiByAnnotaion() {
		log.info("실행1");
	}
	
	// 생성자
	@Autowired
	public Ch12ServiceDiByAnnotaion(Ch12DaoByAnnotation1 daoAnnotaion1) {
		log.info("실행2");
		this.daoAnnotaion1 = daoAnnotaion1;
	}
	
	// Setter(인스턴스 메소드)
	public void setCh12DaoByXml1(Ch12DaoByAnnotation1 daoAnnotaion1) {
		log.info("실행");
		this.daoAnnotaion1 = daoAnnotaion1;
	}
	
	// Setter(인스턴스 메소드)
	@Autowired // @Resource
	public void setCh12DaoByXml2(Ch12DaoByAnnotation2 daoAnnotaion2) {
		log.info("실행");
		this.daoAnnotaion2 = daoAnnotaion2;
	}
	
	// Setter(인스턴스 메소드)
	@Autowired // @Resource
	public void setCh12DaoByXml3(Ch12DaoByAnnotation3 daoAnnotaion3) {
		log.info("실행");
		this.daoAnnotaion3 = daoAnnotaion3;
	}
	
	// 인스턴스 메소드
	public void method() {
		daoAnnotaion1.method();
		daoAnnotaion2.method();
		daoAnnotaion3.method();
		ch12Dao.method();
	}
	
}
