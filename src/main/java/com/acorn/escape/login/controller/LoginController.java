package com.acorn.escape.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.login.dto.LoginDto;
import com.acorn.escape.login.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/login/login_form")
	public String login_form() {
		return "login/login_form";
	}
	
	@RequestMapping("/login/login")
	public ModelAndView login(LoginDto dto, ModelAndView mView,
			HttpSession session) {
		loginService.loginProcess(dto, mView, session);
		String aid=(String)session.getAttribute("aid");
		// 예약관리 페이지 구현되면 다이렉트이동 시킬예정
		if(aid != null) {
			mView.setViewName("home");
			return mView;
			//return "redirect:/home.do";
		}else { 
			mView.setViewName("loginFail_redirect");
			return mView;
		}
	}
	
	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home.do";
	}
}
