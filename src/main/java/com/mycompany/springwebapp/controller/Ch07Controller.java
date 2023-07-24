package com.mycompany.springwebapp.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.dto.Ch07Board;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch07")
public class Ch07Controller {
	
	@RequestMapping("/content")
	public String content() {
		return "ch07/content";
	}
	
	@GetMapping("/userRequest1")
	public String userRequest1(HttpServletRequest request) {
		List<Ch07Board> boards = new ArrayList<>();
		
		for(int i = 1; i <= 5; i++) {
			Ch07Board board = new Ch07Board();
			board.setBno(i);
			board.setBtitle("제목" + i);
			board.setBcontent("내용" + i);
			board.setBwriter("글쓴이" + i);
			board.setBdate(new Date());
			boards.add(board);
		}
		
		request.setAttribute("boardList", boards);
		
		return "ch07/request";
	}
}
