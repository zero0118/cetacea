package com.kitri.project.post;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import vo.Post;

@Controller
public class PostController {
	@Resource(name="postService")
	private Service service;
	@RequestMapping(value = "/post/write.do")
	public String write(Post post, HttpServletRequest req) {
		HttpSession session = req.getSession(false);
//		String path = "D:\\files" + file.getOriginalFilename() + UUID.randomUUID().toString();
//		System.out.println(path);
//		File f = new File(path);
//		try {
//			file.transferTo(f);
//		} catch (IllegalStateException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		post.setFile_original(path);
		post.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		System.out.println(post);
		service.write(post);
		return "template/main";
	}
}