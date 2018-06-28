package com.kitri.project.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import vo.Post;

@Controller
public class PostController {
	private Service service;
	@RequestMapping(value = "/post/write.do")
	public ModelAndView write(HttpServletRequest req, Post post) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = req.getSession(false);
		post.setUser_id(Integer.parseInt((String) session.getAttribute("id")));
		Post post1 = new Post();
		post1 = service.write(post);
		mav.addObject("post", post1);
		return mav;
	}
}