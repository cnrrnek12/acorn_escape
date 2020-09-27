package com.acorn.escape.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.escape.notice.dto.NoticeDto;
import com.acorn.escape.notice.service.NoticeService;

@Controller
public class NoticeCotrollerCheonho {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notice/cheonho/list")
	public ModelAndView getList(HttpServletRequest request, ModelAndView mView) {
		noticeService.getList(request);
		mView.setViewName("notice/cheonho/list");
		return mView;
	}

	@RequestMapping("/notice/cheonho/detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/cheonho/detail");
		return mView;
	}
	
	@RequestMapping("/notice/cheonho/insertform")
	public ModelAndView insertForm(ModelAndView mView) {
		mView.setViewName("notice/cheonho/insertform");
		return mView;
	}
	
	@RequestMapping(value = "/notice/cheonho/insert", method = RequestMethod.POST)
	public ModelAndView insert(NoticeDto dto, ModelAndView mView, HttpSession session) {
		String aid=(String)session.getAttribute("aid");
		dto.setWriter(aid);
		noticeService.saveContent(dto);
		mView.setViewName("notice/cheonho/insert");
		return mView;
	}
	
	@RequestMapping("/notice/cheonho/updateform")
	public ModelAndView updateform(HttpServletRequest request,
			ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/cheonho/updateform");
		return mView;
	}
	@RequestMapping("/notice/cheonho/update")
	public ModelAndView update(NoticeDto dto, ModelAndView mView) {
		noticeService.updateContent(dto);
		mView.setViewName("notice/cheonho/update");
		return mView;
	}
	
	@RequestMapping("/notice/cheonho/delete")
	public ModelAndView delete(int num, HttpServletRequest request,
			ModelAndView mView) {
		noticeService.deleteContent(num, request);
		mView.setViewName("redirect:/notice/cheonho/list.do");
		return mView;
	}
	
}
