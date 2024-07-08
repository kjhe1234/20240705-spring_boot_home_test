package com.kjhe1234.homepage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kjhe1234.homepage.dao.MemberDao;
import com.kjhe1234.homepage.dto.MemberDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping(value = "/")
	public String home() {
		return "index";
	}
	
	@GetMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@GetMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@GetMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	
	@GetMapping(value = "/contact")
	public String contact() {
		return "contact";
	}
	
	@GetMapping(value = "/write")
	public String write() {
		return "writeForm";
	}
	
	@GetMapping(value = "/list")
	public String list() {
		return "boardlist";
	}
	
	@PostMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);		
		
		int idCheck = memberDao.idcheckDao(request.getParameter("mid"));
		// idCheck == 1이면 가입불가, 0이면 가입가능
		
		if (idCheck == 1) {//참이면 가입불가
			model.addAttribute("joinFail", 1);			
		} else {
			//가입성공
			memberDao.joinDao(request.getParameter("mid"), request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("memail"));
			model.addAttribute("mid", request.getParameter("mid"));
			model.addAttribute("mname", request.getParameter("mname"));			
		}
		return "joinOk";
	}
	
	@PostMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session) {
		
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);		
		
		int loginCheck = memberDao.loginCheckDao(request.getParameter("mid"), request.getParameter("mpw"));
		// loginCheck == 1이면 로그인 성공, 0이면 로그인 실패
		
		MemberDto memberDto = null;
		
		if (loginCheck != 1) {//참이면 로그인 실패
			model.addAttribute("loginFail", 1);			
		} else {
			//로그인 성공->세션에 현재 로그인 성공된 아이디를 저장			
			session.setAttribute("sessionId", request.getParameter("mid"));	
			memberDto = memberDao.getMemberInfoDao(request.getParameter("mid"));
			
			model.addAttribute("mname", memberDto.getMname());//로그인 회원 이름		
			model.addAttribute("mdate", memberDto.getMdate());//로그인 회원 가입일
		}
		return "loginOk";
	}
	
	@GetMapping(value ="/logout")
	public String logout(HttpSession session, HttpServletResponse response) {
		
		//컨트롤러에서 경고창 띄우기
		try {
			response.setContentType("text/html;charset=utf-8"); // 경고창 텍스트를 utf-8로 인코딩
			response.setCharacterEncoding("utf-8");
			PrintWriter printWriter = response.getWriter();
			printWriter.println("<script>alert('"+"로그아웃 하시겠습니까?"+"');location.href='"+"login"+"'</script>");
			printWriter.flush();
			session.invalidate(); //로그아웃 -> 세션삭제
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return "login";
	}
	
	
	@RequestMapping(value = "/modify")
	public String modify(HttpSession session, Model model) {
		
		String sid = (String)session.getAttribute("sessionId");
		// 현재 로그인한 회원의 아이디
		MemberDao memberDao = sqlSession.getMapper(MemberDao.class);
		MemberDto memberDto = memberDao.getMemberInfoDao(sid);
		
		model.addAttribute("mDto", memberDto);
		
		return "modifyForm";
	}	
	
	
	
	
	
	

}
