package com.kitri.project.repository;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.Member;
import vo.Repository;


@Controller
public class RepController {
	@Resource(name="repService")
	private Service service;
	
	public void setService(Service service) {
		this.service=service;
	}	
	@RequestMapping(value="repository/urlCheck.do")
	public ModelAndView urlCheck(HttpServletRequest req, @RequestParam(value = "url") String url) {
		System.out.println(url);
		HttpSession session = req.getSession(false);
		ModelAndView mav = new ModelAndView("workspace/urlcheck");
		String result = "";
		Repository r = service.selectUrl(url);
		if (r == null) {
			result = "사용가능";
			session.setAttribute("urlCheck", true);
		} else {
			result = "사용불가";
			session.setAttribute("urlCheck", false);
		}
		System.out.println(session.getAttribute("urlCheck"));
		mav.addObject("result", result);
		return mav;
	}
	@RequestMapping(value="createrep.do")
	public String createRep(@RequestParam(value = "nickname") String nickname,Repository r) {
	service.addRep(r);			
		return "workspace/teaminvite";
	}
	@RequestMapping(value="joinws.do")
	public String joinws() {
		return "workspace/joinworkspace";
	}
	@RequestMapping(value="crch.do")
	public String crch() {
		return "workspace/createchannel";
	}
	
	@RequestMapping(value="teaminvite.do")
	public String teamInvite() {
		return "workspace/teaminvite";
	}
	@RequestMapping(value="wrokspaceurl.do")
	public String workspaceUrl() {
		return "workspace/workspaceurl";
	}



	
	
}
