package com.acorn.escape.timetable.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.escape.timetable.service.TimetableService;

@Controller
public class TimetableController {
	@Autowired
	private TimetableService timeService;
	
	@RequestMapping("/reservation/reservation_ajax")
	@ResponseBody
	public Map<String, Object> reservation(HttpServletRequest request) {
		 return timeService.getList(request);
	}
	
	@RequestMapping("/reservation/res_process")
	@ResponseBody
	public Map<String, Object> resprocess(HttpServletRequest request) {
		timeService.resInsert(request);
		Map<String, Object> map=new HashMap<String, Object>();
		String success="isSuccess";
		map.put("success", success);
		return map;
	}
	

}
