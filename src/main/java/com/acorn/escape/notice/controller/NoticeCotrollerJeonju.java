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
public class NoticeCotrollerJeonju{
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notice/jeonju/list")
	public ModelAndView getList(HttpServletRequest request, ModelAndView mView) {
		noticeService.getList(request);
		mView.setViewName("notice/jeonju/list");
		return mView;
	}

	@RequestMapping("/notice/jeonju/detail")
	public ModelAndView detail(HttpServletRequest request, ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/jeonju/detail");
		return mView;
	}
	
	@RequestMapping("/notice/jeonju/insertform")
	public ModelAndView insertForm(ModelAndView mView) {
		mView.setViewName("notice/jeonju/insertform");
		return mView;
	}
	
	@RequestMapping(value = "/notice/jeonju/insert", method = RequestMethod.POST)
	public ModelAndView insert(NoticeDto dto, ModelAndView mView, HttpSession session) {
		String aid=(String)session.getAttribute("aid");
		dto.setWriter(aid);
		noticeService.saveContent(dto);
		mView.setViewName("notice/jeonju/insert");
		return mView;
	}
	
	@RequestMapping("/notice/jeonju/updateform")
	public ModelAndView updateform(HttpServletRequest request,
			ModelAndView mView) {
		noticeService.getDetail(request);
		mView.setViewName("notice/jeonju/updateform");
		return mView;
	}
	@RequestMapping("/notice/jeonju/update")
	public ModelAndView update(NoticeDto dto, ModelAndView mView) {
		noticeService.updateContent(dto);
		mView.setViewName("notice/jeonju/update");
		return mView;
	}
	
	@RequestMapping("/notice/jeonju/delete")
	public ModelAndView delete(int num, HttpServletRequest request,
			ModelAndView mView) {
		noticeService.deleteContent(num, request);
		mView.setViewName("redirect:/notice/jeonju/list.do");
		return mView;
	}
	
}
