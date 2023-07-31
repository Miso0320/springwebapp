package com.mycompany.springwebapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springwebapp.dto.Ch13Board;
import com.mycompany.springwebapp.dto.Ch13Member;
import com.mycompany.springwebapp.dto.Ch13Pager;
import com.mycompany.springwebapp.service.Ch13BoardService;
import com.mycompany.springwebapp.service.Ch13MemberService;
import com.mycompany.springwebapp.service.Ch13MemberService.JoinResult;
import com.mycompany.springwebapp.service.Ch13MemberService.LoginResult;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/ch13")
public class Ch13Controller {
	//인터페이스타입으로 주입  > 구현 클래스의 이름이 바뀌어도 전체 이름들을 바꿀필요는 없다 
	@Resource
	private Ch13BoardService boardService;
	@Autowired
	private Ch13MemberService memberService;

	
	@RequestMapping("/content")
	public String content() {
		return "ch13/content";
	}	
	
	
	@GetMapping("/insertBoard")
	public String insertBoard() {
		log.info("실행");

			Ch13Board board = new Ch13Board();
			board.setBtitle("살려줘");
			board.setBcontent("고생한 만큼, 실력을 향상시켜서 연봉100억을 받을거야.");
			board.setMid("user");
			
			//boardDaoOld.insert(board);
			boardService.write(board);
			
			//실제로 저장된 bno
			log.info("저장된 bno: " + board.getBno());
		
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/getBoardList")
	public String getBoardList() {
		int totalBoardNum = boardService.getTotalBoardNum();
		
		Ch13Pager pager = new Ch13Pager(10, 5, totalBoardNum, 1);
		
		List<Ch13Board> list = boardService.getList(pager);
		for(Ch13Board board : list) {
			log.info(board.toString());
		}
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/updateBoard")
	public String updateBoard() {
		log.info("실행");
		Ch13Board board = boardService.getBoard(10001);
		board.setBtitle("금요일");
		board.setBcontent("금요일금요일금요일");
		
		boardService.modify(board);
		
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/deleteBoard")
	public String deleteBoard() {
		log.info("실행");
		int bno = 10001;
		boardService.remove(bno);
		
		return "redirect:/ch13/content";
	}
	
	@GetMapping("/join")
	   public String joinForm() {
	      return "ch13/joinForm";
	   }
	
	@PostMapping("/join")
	public String join(Ch13Member member, Model model) {
		JoinResult result = memberService.join(member);
			/*Ch13Member dbMember = memberService.getMember(member.getMid());*/
			if(result == JoinResult.FAIL_DUPLICATED_MID) {
				String error = "중복된 ID가 존재합니다.";
				model.addAttribute("error", error);
				return "ch13/joinForm";
			} else {
				memberService.join(member);
				return "redirect:/ch13/content";						
			}
			
		}
	
	@GetMapping("/login")
	   public String loginForm() {
	      return "ch13/loginForm";
	   }
	
	@PostMapping("/login")
	   public String login(Ch13Member member, Model model, HttpSession session) {
	      LoginResult result = memberService.login(member);
	      String error = "";
	      if(result == LoginResult.FAIL_MID) {
	    	  error = "MID가 없습니다.";
	      } else if(result == LoginResult.FAIL_ENABLED) {
	    	  error = "MID가 비활성화 되어 있습니다";
	      } else if(result == LoginResult.FAIL_MPASSWORD) {
	    	  error = "MPASSWORD가 틀립니다";
	      } else {
	    	  Ch13Member dbMember = memberService.getMember(member.getMid());
	    	  session.setAttribute("ch13Login", dbMember);
	    	  return "redirect:/ch13/content";
	      }
	      
	      model.addAttribute("error", error);
	      return "ch13/loginForm";
	   }
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("ch13login");
		return "redirect:/ch13/content";
		
	}
	
	
	

}
