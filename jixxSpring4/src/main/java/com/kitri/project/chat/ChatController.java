package com.kitri.project.chat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.Post;

@Controller
public class ChatController {
	private Service service;
	@RequestMapping(value = "/post/write.do")
	public String write(HttpServletRequest req, Post post) {
		HttpSession session = req.getSession(false);
		post.setUser_id(Integer.parseInt((String) session.getAttribute("id")));
		service.write(post);
		System.out.println(post);
		return "template/main";
	}
}