package com.kitri.project.post;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import vo.Post;

@Controller
public class PostController {
	@Resource(name="postService")
	private Service service;
	
	@RequestMapping(value = "/post/write.do")
	public String write(Post post, HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		
		MultipartFile file = post.getFile();
		int pos = file.getOriginalFilename().lastIndexOf( "." );
		String ext = file.getOriginalFilename().substring( pos );
		String name = file.getOriginalFilename().substring(0, pos);
		String path = "D:\\files\\" + name + UUID.randomUUID().toString() + ext;
		if (file != null) {
			File f = new File(path);
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			post.setFile_original(path);
		}
		post.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		service.write(post);
		return "template/main";
	}
	
	@RequestMapping(value = "/post/list.do", method=RequestMethod.GET)
	public ModelAndView list(@RequestParam(value = "page") int page, @RequestParam(value = "cn") int cn) {
		System.out.println(page + cn);
		if (page == 0) {
			page = 1;
		}
		ArrayList<Post> list = service.show(page, cn);
		ModelAndView mav = new ModelAndView("main.jsp");
		mav.addObject("list", list);
		return mav;
	}
	
}