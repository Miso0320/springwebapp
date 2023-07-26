package com.mycompany.springwebapp.service;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springwebapp.dao.Ch12DaoByXml1;
import com.mycompany.springwebapp.dao.Ch12DaoByXml2;
import com.mycompany.springwebapp.dao.Ch12DaoByXml3;

import lombok.extern.slf4j.Slf4j;

@Slf4j
/*@Service*/
public class Ch12ServiceDiByXml {
	
	// 필드
	/*@Autowired*/
	private Ch12DaoByXml1 daoXml1;
	private Ch12DaoByXml2 daoXml2;
	private Ch12DaoByXml3 daoXml3;
	
	// 생성자
	public Ch12ServiceDiByXml() {
		log.info("실행1");
	}
	
	// 생성자
	/*@Autowired*/
	public Ch12ServiceDiByXml(Ch12DaoByXml1 daoXml1) {
		log.info("실행2");
		this.daoXml1 = daoXml1;
	}
	
	// Setter(인스턴스 메소드)
	public void setCh12DaoByXml1(Ch12DaoByXml1 daoXml1) {
		log.info("실행");
		this.daoXml1 = daoXml1;
	}
	
	// Setter(인스턴스 메소드)
	public void setCh12DaoByXml2(Ch12DaoByXml2 daoXml2) {
		log.info("실행");
		this.daoXml2 = daoXml2;
	}
	
	// Setter(인스턴스 메소드)
	/*@Autowired*/
	public void setCh12DaoByXml3(Ch12DaoByXml3 daoXml3) {
		log.info("실행");
		this.daoXml3 = daoXml3;
	}
	
	public void setCollection1(List<String> list) {
		log.info("실행");
		for(String itme : list) {
			log.info(itme);
		}
	}
	
	public void setCollection2(Set set) {
		log.info("실행");
		log.info("아이템 수 : " + set.size());
	}
	
	public void setCollection3(Map<String, Object> map) {
		log.info("실행");
		log.info("아이템 수 : " + map.size());
	}
	
	public void setCollection4(Properties prp) {
		log.info("실행");
		log.info("아이템 수 : " + prp.size());
	}
	
	// 인스턴스 메소드
	public void method() {
		daoXml1.method();
		daoXml2.method();
		daoXml3.method();
	}
	
}
