package com.kitri.project.repository;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RepController {
	@Resource(name="repService")
	private Service service;
	
	public void setService(Service service) {
		this.service=service;
	}
	@RequestMapping(value="joinws.do")
	public String joinws() {
		return "workspace/joinworkspace";
	}	
	
}
