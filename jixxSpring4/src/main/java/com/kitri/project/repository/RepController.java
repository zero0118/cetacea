package com.kitri.project.repository;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RepController {
	@Resource(name="repService")
	private Service service;
	
	public void setService(Service service) {
		this.service=service;
	}
	
}
