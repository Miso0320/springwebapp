package com.mycompany.springwebapp.dao;

import java.util.List;

import com.mycompany.springwebapp.dto.Ch13Board;
import com.mycompany.springwebapp.dto.Ch13Pager;

public interface Ch13BoardDaoOld {
	public int insertBoard(Ch13Board board);
	// 나중에 페이징으로 바꿔야 함
	public List<Ch13Board> selectByPage(Ch13Pager pager);
	public Ch13Board selectByBno(int bno);
	// 사용자가 form등을 통해 객체를 넘겨줌
	public int updateByBno(Ch13Board board);
	public int deleteByBno(int bno);
	public int count();
}
