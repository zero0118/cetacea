package com.kitri.project.repository;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

@Controller
public class RepController {
	@Resource(name="repService")
	private Service service;
	
	public void setService(Service service) {
		this.service=service;
	}
	
}
