package com.kitri.project.repository;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.Channel;
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
		Repository r = service.selectRepByUrl(url);
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
	public ModelAndView createRep(HttpServletRequest req,@RequestParam(value = "nickname") String nickname,
			Repository r) {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");		
		ModelAndView mav = new ModelAndView("workspace/teaminvite");
		
		service.addRep(r);
		Repository rep_id = service.getRepId(r);		
		service.createCh(rep_id);
		int rep_id1 = rep_id.getRep_id();		
		Channel chid = service.getChId(rep_id);
		int chid1 = chid.getCh_id();	
		service.createUserMeta(id,rep_id1,chid1);
		service.addBoard(nickname,id,chid1);		
		Repository r2 = service.selectRepByName(r);		
		mav.addObject("r",r2);
		return mav;
	}
	@RequestMapping(value="gomain.do")
	public ModelAndView goMain(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		ModelAndView mav = new ModelAndView("template/main");
		mav.addObject("id",id);
		return mav;
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
