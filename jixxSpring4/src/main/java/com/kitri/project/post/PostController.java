package com.kitri.project.post;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import vo.Post;

@Controller
public class PostController {
	@Resource(name="postService")
	private Service service;
	@RequestMapping(value = "/post/write.do")
	public String write(HttpServletRequest req, Post post) {
		HttpSession session = req.getSession(false);
		post.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		System.out.println(post);
		service.write(post);
		return "template/main";
	}
}