package com.mycompany.springwebapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.springwebapp.dto.Ch13Board;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class Ch13BoardDaoOld {
	@Resource
	private SqlSessionTemplate sst;
	
	public int insertBoard(Ch13Board board) {
		/*
		 1) com.mycompany.springwebapp.dao.mybatis.Ch13BoardDao : Mapper XML 선택
		 2) .insert : Mapper XML 안에 선언된 ID
		 3) 리턴값 : 실제 테이블에 반영된 행의 수
		*/
		int rows = sst.insert("com.mycompany.springwebapp.dao.Ch13BoardDao.insert", board);
		
		return rows;
	}
	
	// 나중에 페이징으로 바꿔야 함
	public List<Ch13Board> selectAll() {
		List<Ch13Board> list =  sst.selectList("com.mycompany.springwebapp.dao.Ch13BoardDao.selectAll");
		
		return list;
	}
	
	public Ch13Board selectByBno(int bno) {
		Ch13Board list =  sst.selectOne("com.mycompany.springwebapp.dao.Ch13BoardDao.selectByBno", bno);
		
		return list;
	}
	
	// 사용자가 form등을 통해 객체를 넘겨줌
	public int updateByBno(Ch13Board board) {
		board.setBtitle("변경된 제목");
		board.setBcontent("변경된 내용");
		
		int rows = sst.update("com.mycompany.springwebapp.dao.Ch13BoardDao.updateByBno", board);
		
		return rows;
	}
	
	public int deleteByBno(int bno) {
		int rows = sst.delete("com.mycompany.springwebapp.dao.Ch13BoardDao.deleteByBno", bno);
		
		return rows;
	}
}
